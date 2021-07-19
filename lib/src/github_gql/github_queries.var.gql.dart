// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:angry_kitty/third_party/github_graphql_schema/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'github_queries.var.gql.g.dart';

abstract class GViewerDetailVars
    implements Built<GViewerDetailVars, GViewerDetailVarsBuilder> {
  GViewerDetailVars._();

  factory GViewerDetailVars([Function(GViewerDetailVarsBuilder b) updates]) =
      _$GViewerDetailVars;

  static Serializer<GViewerDetailVars> get serializer =>
      _$gViewerDetailVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GViewerDetailVars.serializer, this)
          as Map<String, dynamic>);
  static GViewerDetailVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GViewerDetailVars.serializer, json);
}
