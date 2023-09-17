// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'entities/Health Issues/condition.entity.dart';
import 'entities/Remedies/category.entity.dart';
import 'entities/Remedies/item.entity.dart';
import 'entities/Remedy Plans/plan.entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 493421300811468680),
      name: 'Categories',
      lastPropertyId: const IdUid(2, 5756144890093728380),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 906556679052362007),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5756144890093728380),
            name: 'name',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'items', srcEntity: 'Items', srcField: 'category')
      ]),
  ModelEntity(
      id: const IdUid(2, 2609326345101509421),
      name: 'Conditions',
      lastPropertyId: const IdUid(5, 1855930378351106938),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7087844791503537232),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6051325736118493358),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5438845775846145712),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2225146082137468797),
            name: 'causes',
            type: 30,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1855930378351106938),
            name: 'complications',
            type: 30,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'plan', srcEntity: 'Plans', srcField: 'condition')
      ]),
  ModelEntity(
      id: const IdUid(3, 5554225170891217308),
      name: 'Items',
      lastPropertyId: const IdUid(8, 2611441828463906729),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2158821375980545017),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1380189735936351701),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5368467357347244208),
            name: 'alsoCalled',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8178533023042784426),
            name: 'uses',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3788868600177946414),
            name: 'caution',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5992163432633560901),
            name: 'conscientiousConsumerInformation',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7509759448016889319),
            name: 'references',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 2611441828463906729),
            name: 'categoryId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 8109605575080774012),
            relationTarget: 'Categories')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'plan', srcEntity: 'Plans', srcField: 'item')
      ]),
  ModelEntity(
      id: const IdUid(4, 9004308457685907219),
      name: 'Plans',
      lastPropertyId: const IdUid(9, 1459274752756187479),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7549931486868707536),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7920672040294168918),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7796427928556574458),
            name: 'instructions',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1180968618370236731),
            name: 'dosage',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 2934476228735900018),
            name: 'precautions',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 12877913749435373),
            name: 'references',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2360568390853401989),
            name: 'ItemId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 2186272959642087659),
            relationTarget: 'Items'),
        ModelProperty(
            id: const IdUid(9, 1459274752756187479),
            name: 'ConditionId',
            type: 11,
            flags: 520,
            indexId: const IdUid(4, 2228119654029802589),
            relationTarget: 'Conditions')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(4, 9004308457685907219),
      lastIndexId: const IdUid(4, 2228119654029802589),
      lastRelationId: const IdUid(2, 5272826434264779726),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [7865724053688596371],
      retiredPropertyUids: const [4615812197920491081],
      retiredRelationUids: const [2223625136742044792, 5272826434264779726],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Categories: EntityDefinition<Categories>(
        model: _entities[0],
        toOneRelations: (Categories object) => [],
        toManyRelations: (Categories object) => {
              RelInfo<Items>.toOneBacklink(
                      8, object.id, (Items srcObject) => srcObject.category):
                  object.items
            },
        getId: (Categories object) => object.id,
        setId: (Categories object, int id) {
          object.id = id;
        },
        objectToFB: (Categories object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final object = Categories(id: idParam, name: nameParam);
          InternalToManyAccess.setRelInfo<Categories>(
              object.items,
              store,
              RelInfo<Items>.toOneBacklink(
                  8, object.id, (Items srcObject) => srcObject.category));
          return object;
        }),
    Conditions: EntityDefinition<Conditions>(
        model: _entities[1],
        toOneRelations: (Conditions object) => [],
        toManyRelations: (Conditions object) => {
              RelInfo<Plans>.toOneBacklink(
                      9, object.id, (Plans srcObject) => srcObject.Condition):
                  object.plan
            },
        getId: (Conditions object) => object.id,
        setId: (Conditions object, int id) {
          object.id = id;
        },
        objectToFB: (Conditions object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final descriptionOffset = fbb.writeString(object.description);
          final causesOffset = fbb.writeList(
              object.causes.map(fbb.writeString).toList(growable: false));
          final complicationsOffset = fbb.writeList(object.complications
              .map(fbb.writeString)
              .toList(growable: false));
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, descriptionOffset);
          fbb.addOffset(3, causesOffset);
          fbb.addOffset(4, complicationsOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final descriptionParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, '');
          final complicationsParam = const fb.ListReader<String>(
                  fb.StringReader(asciiOptimization: true),
                  lazy: false)
              .vTableGet(buffer, rootOffset, 12, []);
          final causesParam = const fb.ListReader<String>(
                  fb.StringReader(asciiOptimization: true),
                  lazy: false)
              .vTableGet(buffer, rootOffset, 10, []);
          final object = Conditions(
              id: idParam,
              name: nameParam,
              description: descriptionParam,
              complications: complicationsParam,
              causes: causesParam);
          InternalToManyAccess.setRelInfo<Conditions>(
              object.plan,
              store,
              RelInfo<Plans>.toOneBacklink(
                  9, object.id, (Plans srcObject) => srcObject.Condition));
          return object;
        }),
    Items: EntityDefinition<Items>(
        model: _entities[2],
        toOneRelations: (Items object) => [object.category],
        toManyRelations: (Items object) => {
              RelInfo<Plans>.toOneBacklink(
                      7, object.id, (Plans srcObject) => srcObject.Item):
                  object.plan
            },
        getId: (Items object) => object.id,
        setId: (Items object, int id) {
          object.id = id;
        },
        objectToFB: (Items object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final alsoCalledOffset = fbb.writeString(object.alsoCalled);
          final usesOffset = fbb.writeString(object.uses);
          final cautionOffset = fbb.writeString(object.caution);
          final conscientiousConsumerInformationOffset =
              fbb.writeString(object.conscientiousConsumerInformation);
          final referencesOffset = fbb.writeString(object.references);
          fbb.startTable(9);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, alsoCalledOffset);
          fbb.addOffset(3, usesOffset);
          fbb.addOffset(4, cautionOffset);
          fbb.addOffset(5, conscientiousConsumerInformationOffset);
          fbb.addOffset(6, referencesOffset);
          fbb.addInt64(7, object.category.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final alsoCalledParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final usesParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final cautionParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 12, '');
          final conscientiousConsumerInformationParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 14, '');
          final referencesParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 16, '');
          final object = Items(
              id: idParam,
              name: nameParam,
              alsoCalled: alsoCalledParam,
              uses: usesParam,
              caution: cautionParam,
              conscientiousConsumerInformation:
                  conscientiousConsumerInformationParam,
              references: referencesParam);
          object.category.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 18, 0);
          object.category.attach(store);
          InternalToManyAccess.setRelInfo<Items>(
              object.plan,
              store,
              RelInfo<Plans>.toOneBacklink(
                  7, object.id, (Plans srcObject) => srcObject.Item));
          return object;
        }),
    Plans: EntityDefinition<Plans>(
        model: _entities[3],
        toOneRelations: (Plans object) => [object.Item, object.Condition],
        toManyRelations: (Plans object) => {},
        getId: (Plans object) => object.id,
        setId: (Plans object, int id) {
          object.id = id;
        },
        objectToFB: (Plans object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final instructionsOffset = fbb.writeString(object.instructions);
          final dosageOffset = fbb.writeString(object.dosage);
          final precautionsOffset = fbb.writeString(object.precautions);
          final referencesOffset = fbb.writeString(object.references);
          fbb.startTable(10);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, instructionsOffset);
          fbb.addOffset(3, dosageOffset);
          fbb.addOffset(4, precautionsOffset);
          fbb.addOffset(5, referencesOffset);
          fbb.addInt64(6, object.Item.targetId);
          fbb.addInt64(8, object.Condition.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final instructionsParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, '');
          final dosageParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final precautionsParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 12, '');
          final referencesParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 14, '');
          final object = Plans(
              id: idParam,
              name: nameParam,
              instructions: instructionsParam,
              dosage: dosageParam,
              precautions: precautionsParam,
              references: referencesParam);
          object.Item.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0);
          object.Item.attach(store);
          object.Condition.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 20, 0);
          object.Condition.attach(store);
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Categories] entity fields to define ObjectBox queries.
class Categories_ {
  /// see [Categories.id]
  static final id =
      QueryIntegerProperty<Categories>(_entities[0].properties[0]);

  /// see [Categories.name]
  static final name =
      QueryStringProperty<Categories>(_entities[0].properties[1]);
}

/// [Conditions] entity fields to define ObjectBox queries.
class Conditions_ {
  /// see [Conditions.id]
  static final id =
      QueryIntegerProperty<Conditions>(_entities[1].properties[0]);

  /// see [Conditions.name]
  static final name =
      QueryStringProperty<Conditions>(_entities[1].properties[1]);

  /// see [Conditions.description]
  static final description =
      QueryStringProperty<Conditions>(_entities[1].properties[2]);

  /// see [Conditions.causes]
  static final causes =
      QueryStringVectorProperty<Conditions>(_entities[1].properties[3]);

  /// see [Conditions.complications]
  static final complications =
      QueryStringVectorProperty<Conditions>(_entities[1].properties[4]);
}

/// [Items] entity fields to define ObjectBox queries.
class Items_ {
  /// see [Items.id]
  static final id = QueryIntegerProperty<Items>(_entities[2].properties[0]);

  /// see [Items.name]
  static final name = QueryStringProperty<Items>(_entities[2].properties[1]);

  /// see [Items.alsoCalled]
  static final alsoCalled =
      QueryStringProperty<Items>(_entities[2].properties[2]);

  /// see [Items.uses]
  static final uses = QueryStringProperty<Items>(_entities[2].properties[3]);

  /// see [Items.caution]
  static final caution = QueryStringProperty<Items>(_entities[2].properties[4]);

  /// see [Items.conscientiousConsumerInformation]
  static final conscientiousConsumerInformation =
      QueryStringProperty<Items>(_entities[2].properties[5]);

  /// see [Items.references]
  static final references =
      QueryStringProperty<Items>(_entities[2].properties[6]);

  /// see [Items.category]
  static final category =
      QueryRelationToOne<Items, Categories>(_entities[2].properties[7]);
}

/// [Plans] entity fields to define ObjectBox queries.
class Plans_ {
  /// see [Plans.id]
  static final id = QueryIntegerProperty<Plans>(_entities[3].properties[0]);

  /// see [Plans.name]
  static final name = QueryStringProperty<Plans>(_entities[3].properties[1]);

  /// see [Plans.instructions]
  static final instructions =
      QueryStringProperty<Plans>(_entities[3].properties[2]);

  /// see [Plans.dosage]
  static final dosage = QueryStringProperty<Plans>(_entities[3].properties[3]);

  /// see [Plans.precautions]
  static final precautions =
      QueryStringProperty<Plans>(_entities[3].properties[4]);

  /// see [Plans.references]
  static final references =
      QueryStringProperty<Plans>(_entities[3].properties[5]);

  /// see [Plans.Item]
  static final Item =
      QueryRelationToOne<Plans, Items>(_entities[3].properties[6]);

  /// see [Plans.Condition]
  static final Condition =
      QueryRelationToOne<Plans, Conditions>(_entities[3].properties[7]);
}
