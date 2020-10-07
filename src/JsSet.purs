module Foreign.JsSet where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2) as EFn

data JsSet a

foreign import empty ∷ ∀ a . Effect (JsSet a)

foreign import _add ∷ ∀ a . EFn.EffectFn2 a (JsSet a) (JsSet a)

foreign import _clear ∷ ∀ a . EFn.EffectFn1(JsSet a) Unit

foreign import _delete ∷ ∀ a . EFn.EffectFn2 a (JsSet a) Boolean

foreign import _has ∷ ∀ a . EFn.EffectFn2 a (JsSet a) Boolean

foreign import _values ∷ ∀ a . EFn.EffectFn1 (JsSet a) (Iterator a)

-- | keys
-- | entries

foreign import _forEach ∷ ∀ a . EFn.EffectFn2 (EFn.EffectFn1 a Unit) (JsSet a) Unit

foreign import _size ∷ ∀ a . EFn.EffectFn1 (JsSet a) Int

foreign import _toArray ∷ ∀ a . EFn.EffectFn1 (JsSet a) (Array a)
