// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Drink {
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int price, bool isNeedSugar) coffee,
    required TResult Function(String name, int price, int isHot) milk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int price, bool isNeedSugar)? coffee,
    TResult? Function(String name, int price, int isHot)? milk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int price, bool isNeedSugar)? coffee,
    TResult Function(String name, int price, int isHot)? milk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Coffee value) coffee,
    required TResult Function(_Milk value) milk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Coffee value)? coffee,
    TResult? Function(_Milk value)? milk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Coffee value)? coffee,
    TResult Function(_Milk value)? milk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DrinkCopyWith<Drink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkCopyWith<$Res> {
  factory $DrinkCopyWith(Drink value, $Res Function(Drink) then) =
      _$DrinkCopyWithImpl<$Res, Drink>;
  @useResult
  $Res call({String name, int price});
}

/// @nodoc
class _$DrinkCopyWithImpl<$Res, $Val extends Drink>
    implements $DrinkCopyWith<$Res> {
  _$DrinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoffeeImplCopyWith<$Res> implements $DrinkCopyWith<$Res> {
  factory _$$CoffeeImplCopyWith(
          _$CoffeeImpl value, $Res Function(_$CoffeeImpl) then) =
      __$$CoffeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int price, bool isNeedSugar});
}

/// @nodoc
class __$$CoffeeImplCopyWithImpl<$Res>
    extends _$DrinkCopyWithImpl<$Res, _$CoffeeImpl>
    implements _$$CoffeeImplCopyWith<$Res> {
  __$$CoffeeImplCopyWithImpl(
      _$CoffeeImpl _value, $Res Function(_$CoffeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? isNeedSugar = null,
  }) {
    return _then(_$CoffeeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isNeedSugar: null == isNeedSugar
          ? _value.isNeedSugar
          : isNeedSugar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CoffeeImpl extends _Coffee {
  const _$CoffeeImpl(
      {required this.name, required this.price, required this.isNeedSugar})
      : super._();

  @override
  final String name;
  @override
  final int price;
  @override
  final bool isNeedSugar;

  @override
  String toString() {
    return 'Drink.coffee(name: $name, price: $price, isNeedSugar: $isNeedSugar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isNeedSugar, isNeedSugar) ||
                other.isNeedSugar == isNeedSugar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, price, isNeedSugar);

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeImplCopyWith<_$CoffeeImpl> get copyWith =>
      __$$CoffeeImplCopyWithImpl<_$CoffeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int price, bool isNeedSugar) coffee,
    required TResult Function(String name, int price, int isHot) milk,
  }) {
    return coffee(name, price, isNeedSugar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int price, bool isNeedSugar)? coffee,
    TResult? Function(String name, int price, int isHot)? milk,
  }) {
    return coffee?.call(name, price, isNeedSugar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int price, bool isNeedSugar)? coffee,
    TResult Function(String name, int price, int isHot)? milk,
    required TResult orElse(),
  }) {
    if (coffee != null) {
      return coffee(name, price, isNeedSugar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Coffee value) coffee,
    required TResult Function(_Milk value) milk,
  }) {
    return coffee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Coffee value)? coffee,
    TResult? Function(_Milk value)? milk,
  }) {
    return coffee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Coffee value)? coffee,
    TResult Function(_Milk value)? milk,
    required TResult orElse(),
  }) {
    if (coffee != null) {
      return coffee(this);
    }
    return orElse();
  }
}

abstract class _Coffee extends Drink {
  const factory _Coffee(
      {required final String name,
      required final int price,
      required final bool isNeedSugar}) = _$CoffeeImpl;
  const _Coffee._() : super._();

  @override
  String get name;
  @override
  int get price;
  bool get isNeedSugar;

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffeeImplCopyWith<_$CoffeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MilkImplCopyWith<$Res> implements $DrinkCopyWith<$Res> {
  factory _$$MilkImplCopyWith(
          _$MilkImpl value, $Res Function(_$MilkImpl) then) =
      __$$MilkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int price, int isHot});
}

/// @nodoc
class __$$MilkImplCopyWithImpl<$Res>
    extends _$DrinkCopyWithImpl<$Res, _$MilkImpl>
    implements _$$MilkImplCopyWith<$Res> {
  __$$MilkImplCopyWithImpl(_$MilkImpl _value, $Res Function(_$MilkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? isHot = null,
  }) {
    return _then(_$MilkImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isHot: null == isHot
          ? _value.isHot
          : isHot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MilkImpl extends _Milk {
  const _$MilkImpl(
      {required this.name, required this.price, required this.isHot})
      : super._();

  @override
  final String name;
  @override
  final int price;
  @override
  final int isHot;

  @override
  String toString() {
    return 'Drink.milk(name: $name, price: $price, isHot: $isHot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MilkImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isHot, isHot) || other.isHot == isHot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, price, isHot);

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MilkImplCopyWith<_$MilkImpl> get copyWith =>
      __$$MilkImplCopyWithImpl<_$MilkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int price, bool isNeedSugar) coffee,
    required TResult Function(String name, int price, int isHot) milk,
  }) {
    return milk(name, price, isHot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int price, bool isNeedSugar)? coffee,
    TResult? Function(String name, int price, int isHot)? milk,
  }) {
    return milk?.call(name, price, isHot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int price, bool isNeedSugar)? coffee,
    TResult Function(String name, int price, int isHot)? milk,
    required TResult orElse(),
  }) {
    if (milk != null) {
      return milk(name, price, isHot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Coffee value) coffee,
    required TResult Function(_Milk value) milk,
  }) {
    return milk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Coffee value)? coffee,
    TResult? Function(_Milk value)? milk,
  }) {
    return milk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Coffee value)? coffee,
    TResult Function(_Milk value)? milk,
    required TResult orElse(),
  }) {
    if (milk != null) {
      return milk(this);
    }
    return orElse();
  }
}

abstract class _Milk extends Drink {
  const factory _Milk(
      {required final String name,
      required final int price,
      required final int isHot}) = _$MilkImpl;
  const _Milk._() : super._();

  @override
  String get name;
  @override
  int get price;
  int get isHot;

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MilkImplCopyWith<_$MilkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
