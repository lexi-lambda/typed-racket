#lang racket/base

(require "../utils/utils.rkt"
         syntax/struct syntax/parse racket/function racket/match racket/list

         (prefix-in c: (contract-req))
         (rep type-rep object-rep free-variance)
         (private parse-type syntax-properties)
         (types abbrev utils resolve substitute struct-table)
         (env global-env type-name-env type-alias-env tvar-env)
         (utils tc-utils)
         (typecheck def-binding internal-forms)
         (for-syntax syntax/parse racket/base))

#;(define (tc/generics name type method-names mtypes)
  (define method-types (map parse-types mtypes)))
