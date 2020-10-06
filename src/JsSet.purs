module Foreign.JsSet where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2) as EFn

data JsSet proxy

foreign import empty ∷ ∀ proxy . Effect (JsSet proxy)

foreign import _delete ∷ ∀ proxy . EFn.EffectFn2 proxy (JsSet proxy) Unit

foreign import _add ∷ ∀ proxy . EFn.EffectFn2 proxy (JsSet proxy) Unit

foreign import _size ∷ ∀ proxy . EFn.EffectFn1 (JsSet proxy) Int

foreign import _has ∷ ∀ proxy . EFn.EffectFn2 proxy (JsSet proxy) Boolean

foreign import _toArray ∷ ∀ proxy . EFn.EffectFn1 (JsSet proxy) (Array proxy)
