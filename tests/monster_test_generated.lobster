// automatically generated by the FlatBuffers compiler, do not modify

include "flatbuffers.lobster"

namespace MyGame_Example

enum + 
    Color_Red = 1,
    Color_Green = 2,
    Color_Blue = 8

enum + 
    Any_NONE = 0,
    Any_Monster = 1,
    Any_TestSimpleTableWithEnum = 2,
    Any_MyGame_Example2_Monster = 3

namespace MyGame

struct InParentNamespace

namespace MyGame_Example2

struct Monster

namespace MyGame_Example

struct Test

struct TestSimpleTableWithEnum

struct Vec3

struct Ability

struct Stat

struct Referrable

struct Monster

struct TypeAliases

namespace MyGame

struct InParentNamespace : flatbuffers_handle

def GetRootAsInParentNamespace(buf:string): InParentNamespace { buf, buf.flatbuffers_indirect(0) }

def InParentNamespaceStart(b_:flatbuffers_builder):
    b_.StartObject(0)
def InParentNamespaceEnd(b_:flatbuffers_builder):
    b_.EndObject()

namespace MyGame_Example2

struct Monster : flatbuffers_handle

def GetRootAsMonster(buf:string): Monster { buf, buf.flatbuffers_indirect(0) }

def MonsterStart(b_:flatbuffers_builder):
    b_.StartObject(0)
def MonsterEnd(b_:flatbuffers_builder):
    b_.EndObject()

namespace MyGame_Example

struct Test : flatbuffers_handle
    def a():
        buf_.read_int16_le(pos_ + 0)
    def b():
        buf_.read_int8_le(pos_ + 2)

def CreateTest(b_:flatbuffers_builder, a:int, b:int):
    b_.Prep(2, 4)
    b_.Pad(1)
    b_.PrependInt8(b)
    b_.PrependInt16(a)
    return b_.Offset()

struct TestSimpleTableWithEnum : flatbuffers_handle
    def color():
        buf_.flatbuffers_field_int8(pos_, 4, 2)

def GetRootAsTestSimpleTableWithEnum(buf:string): TestSimpleTableWithEnum { buf, buf.flatbuffers_indirect(0) }

def TestSimpleTableWithEnumStart(b_:flatbuffers_builder):
    b_.StartObject(1)
def TestSimpleTableWithEnumAddColor(b_:flatbuffers_builder, color:int):
    b_.PrependInt8Slot(0, color, 2)
def TestSimpleTableWithEnumEnd(b_:flatbuffers_builder):
    b_.EndObject()

struct Vec3 : flatbuffers_handle
    def x():
        buf_.read_float32_le(pos_ + 0)
    def y():
        buf_.read_float32_le(pos_ + 4)
    def z():
        buf_.read_float32_le(pos_ + 8)
    def test1():
        buf_.read_float64_le(pos_ + 16)
    def test2():
        buf_.read_int8_le(pos_ + 24)
    def test3():
        MyGame_Example_Test{ buf_, pos_ + 26 }

def CreateVec3(b_:flatbuffers_builder, x:float, y:float, z:float, test1:float, test2:int, test3_a:int, test3_b:int):
    b_.Prep(16, 32)
    b_.Pad(2)
    b_.Prep(2, 4)
    b_.Pad(1)
    b_.PrependInt8(test3_b)
    b_.PrependInt16(test3_a)
    b_.Pad(1)
    b_.PrependInt8(test2)
    b_.PrependFloat64(test1)
    b_.Pad(4)
    b_.PrependFloat32(z)
    b_.PrependFloat32(y)
    b_.PrependFloat32(x)
    return b_.Offset()

struct Ability : flatbuffers_handle
    def id():
        buf_.read_int32_le(pos_ + 0)
    def distance():
        buf_.read_int32_le(pos_ + 4)

def CreateAbility(b_:flatbuffers_builder, id:int, distance:int):
    b_.Prep(4, 8)
    b_.PrependUint32(distance)
    b_.PrependUint32(id)
    return b_.Offset()

struct Stat : flatbuffers_handle
    def id():
        buf_.flatbuffers_field_string(pos_, 4)
    def val():
        buf_.flatbuffers_field_int64(pos_, 6, 0)
    def count():
        buf_.flatbuffers_field_int16(pos_, 8, 0)

def GetRootAsStat(buf:string): Stat { buf, buf.flatbuffers_indirect(0) }

def StatStart(b_:flatbuffers_builder):
    b_.StartObject(3)
def StatAddId(b_:flatbuffers_builder, id:int):
    b_.PrependUOffsetTRelativeSlot(0, id, 0)
def StatAddVal(b_:flatbuffers_builder, val:int):
    b_.PrependInt64Slot(1, val, 0)
def StatAddCount(b_:flatbuffers_builder, count:int):
    b_.PrependUint16Slot(2, count, 0)
def StatEnd(b_:flatbuffers_builder):
    b_.EndObject()

struct Referrable : flatbuffers_handle
    def id():
        buf_.flatbuffers_field_int64(pos_, 4, 0)

def GetRootAsReferrable(buf:string): Referrable { buf, buf.flatbuffers_indirect(0) }

def ReferrableStart(b_:flatbuffers_builder):
    b_.StartObject(1)
def ReferrableAddId(b_:flatbuffers_builder, id:int):
    b_.PrependUint64Slot(0, id, 0)
def ReferrableEnd(b_:flatbuffers_builder):
    b_.EndObject()

/// an example documentation comment: monster object
struct Monster : flatbuffers_handle
    def pos():
        o := buf_.flatbuffers_field_struct(pos_, 4)
        if o: MyGame_Example_Vec3 { buf_, o } else: nil
    def mana():
        buf_.flatbuffers_field_int16(pos_, 6, 150)
    def hp():
        buf_.flatbuffers_field_int16(pos_, 8, 100)
    def name():
        buf_.flatbuffers_field_string(pos_, 10)
    def inventory(i:int):
        buf_.read_int8_le(buf_.flatbuffers_field_vector(pos_, 14) + i * 1)
    def inventory_length():
        buf_.flatbuffers_field_vector_len(pos_, 14)
    def color():
        buf_.flatbuffers_field_int8(pos_, 16, 8)
    def test_type():
        buf_.flatbuffers_field_int8(pos_, 18, 0)
    def test_as_Monster():
        MyGame_Example_Monster { buf_, buf_.flatbuffers_field_table(pos_, 20) }
    def test_as_TestSimpleTableWithEnum():
        MyGame_Example_TestSimpleTableWithEnum { buf_, buf_.flatbuffers_field_table(pos_, 20) }
    def test_as_MyGame_Example2_Monster():
        MyGame_Example2_Monster { buf_, buf_.flatbuffers_field_table(pos_, 20) }
    def test4(i:int):
        MyGame_Example_Test { buf_, buf_.flatbuffers_field_vector(pos_, 22) + i * 4 }
    def test4_length():
        buf_.flatbuffers_field_vector_len(pos_, 22)
    def testarrayofstring(i:int):
        buf_.flatbuffers_string(buf_.flatbuffers_field_vector(pos_, 24) + i * 4)
    def testarrayofstring_length():
        buf_.flatbuffers_field_vector_len(pos_, 24)
    /// an example documentation comment: this will end up in the generated code
    /// multiline too
    def testarrayoftables(i:int):
        MyGame_Example_Monster { buf_, buf_.flatbuffers_indirect(buf_.flatbuffers_field_vector(pos_, 26) + i * 4) }
    def testarrayoftables_length():
        buf_.flatbuffers_field_vector_len(pos_, 26)
    def enemy():
        o := buf_.flatbuffers_field_table(pos_, 28)
        if o: MyGame_Example_Monster { buf_, o } else: nil
    def testnestedflatbuffer(i:int):
        buf_.read_int8_le(buf_.flatbuffers_field_vector(pos_, 30) + i * 1)
    def testnestedflatbuffer_length():
        buf_.flatbuffers_field_vector_len(pos_, 30)
    def testempty():
        o := buf_.flatbuffers_field_table(pos_, 32)
        if o: MyGame_Example_Stat { buf_, o } else: nil
    def testbool():
        buf_.flatbuffers_field_int8(pos_, 34, 0)
    def testhashs32_fnv1():
        buf_.flatbuffers_field_int32(pos_, 36, 0)
    def testhashu32_fnv1():
        buf_.flatbuffers_field_int32(pos_, 38, 0)
    def testhashs64_fnv1():
        buf_.flatbuffers_field_int64(pos_, 40, 0)
    def testhashu64_fnv1():
        buf_.flatbuffers_field_int64(pos_, 42, 0)
    def testhashs32_fnv1a():
        buf_.flatbuffers_field_int32(pos_, 44, 0)
    def testhashu32_fnv1a():
        buf_.flatbuffers_field_int32(pos_, 46, 0)
    def testhashs64_fnv1a():
        buf_.flatbuffers_field_int64(pos_, 48, 0)
    def testhashu64_fnv1a():
        buf_.flatbuffers_field_int64(pos_, 50, 0)
    def testarrayofbools(i:int):
        buf_.read_int8_le(buf_.flatbuffers_field_vector(pos_, 52) + i * 1)
    def testarrayofbools_length():
        buf_.flatbuffers_field_vector_len(pos_, 52)
    def testf():
        buf_.flatbuffers_field_float32(pos_, 54, 3.14159)
    def testf2():
        buf_.flatbuffers_field_float32(pos_, 56, 3.0)
    def testf3():
        buf_.flatbuffers_field_float32(pos_, 58, 0.0)
    def testarrayofstring2(i:int):
        buf_.flatbuffers_string(buf_.flatbuffers_field_vector(pos_, 60) + i * 4)
    def testarrayofstring2_length():
        buf_.flatbuffers_field_vector_len(pos_, 60)
    def testarrayofsortedstruct(i:int):
        MyGame_Example_Ability { buf_, buf_.flatbuffers_field_vector(pos_, 62) + i * 8 }
    def testarrayofsortedstruct_length():
        buf_.flatbuffers_field_vector_len(pos_, 62)
    def flex(i:int):
        buf_.read_int8_le(buf_.flatbuffers_field_vector(pos_, 64) + i * 1)
    def flex_length():
        buf_.flatbuffers_field_vector_len(pos_, 64)
    def test5(i:int):
        MyGame_Example_Test { buf_, buf_.flatbuffers_field_vector(pos_, 66) + i * 4 }
    def test5_length():
        buf_.flatbuffers_field_vector_len(pos_, 66)
    def vector_of_longs(i:int):
        buf_.read_int64_le(buf_.flatbuffers_field_vector(pos_, 68) + i * 8)
    def vector_of_longs_length():
        buf_.flatbuffers_field_vector_len(pos_, 68)
    def vector_of_doubles(i:int):
        buf_.read_float64_le(buf_.flatbuffers_field_vector(pos_, 70) + i * 8)
    def vector_of_doubles_length():
        buf_.flatbuffers_field_vector_len(pos_, 70)
    def parent_namespace_test():
        o := buf_.flatbuffers_field_table(pos_, 72)
        if o: MyGame_InParentNamespace { buf_, o } else: nil
    def vector_of_referrables(i:int):
        MyGame_Example_Referrable { buf_, buf_.flatbuffers_indirect(buf_.flatbuffers_field_vector(pos_, 74) + i * 4) }
    def vector_of_referrables_length():
        buf_.flatbuffers_field_vector_len(pos_, 74)
    def single_weak_reference():
        buf_.flatbuffers_field_int64(pos_, 76, 0)
    def vector_of_weak_references(i:int):
        buf_.read_int64_le(buf_.flatbuffers_field_vector(pos_, 78) + i * 8)
    def vector_of_weak_references_length():
        buf_.flatbuffers_field_vector_len(pos_, 78)
    def vector_of_strong_referrables(i:int):
        MyGame_Example_Referrable { buf_, buf_.flatbuffers_indirect(buf_.flatbuffers_field_vector(pos_, 80) + i * 4) }
    def vector_of_strong_referrables_length():
        buf_.flatbuffers_field_vector_len(pos_, 80)
    def co_owning_reference():
        buf_.flatbuffers_field_int64(pos_, 82, 0)
    def vector_of_co_owning_references(i:int):
        buf_.read_int64_le(buf_.flatbuffers_field_vector(pos_, 84) + i * 8)
    def vector_of_co_owning_references_length():
        buf_.flatbuffers_field_vector_len(pos_, 84)
    def non_owning_reference():
        buf_.flatbuffers_field_int64(pos_, 86, 0)
    def vector_of_non_owning_references(i:int):
        buf_.read_int64_le(buf_.flatbuffers_field_vector(pos_, 88) + i * 8)
    def vector_of_non_owning_references_length():
        buf_.flatbuffers_field_vector_len(pos_, 88)

def GetRootAsMonster(buf:string): Monster { buf, buf.flatbuffers_indirect(0) }

def MonsterStart(b_:flatbuffers_builder):
    b_.StartObject(43)
def MonsterAddPos(b_:flatbuffers_builder, pos:int):
    b_.PrependStructSlot(0, pos, 0)
def MonsterAddMana(b_:flatbuffers_builder, mana:int):
    b_.PrependInt16Slot(1, mana, 150)
def MonsterAddHp(b_:flatbuffers_builder, hp:int):
    b_.PrependInt16Slot(2, hp, 100)
def MonsterAddName(b_:flatbuffers_builder, name:int):
    b_.PrependUOffsetTRelativeSlot(3, name, 0)
def MonsterAddInventory(b_:flatbuffers_builder, inventory:int):
    b_.PrependUOffsetTRelativeSlot(5, inventory, 0)
def MonsterStartInventoryVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(1, n_, 1)
def MonsterCreateInventoryVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(1, v_.length, 1)
    reverse(v_) e_: b_.PrependUint8(e_)
    b_.EndVector(v_.length)
def MonsterAddColor(b_:flatbuffers_builder, color:int):
    b_.PrependInt8Slot(6, color, 8)
def MonsterAddTestType(b_:flatbuffers_builder, test_type:int):
    b_.PrependUint8Slot(7, test_type, 0)
def MonsterAddTest(b_:flatbuffers_builder, test:int):
    b_.PrependUOffsetTRelativeSlot(8, test, 0)
def MonsterAddTest4(b_:flatbuffers_builder, test4:int):
    b_.PrependUOffsetTRelativeSlot(9, test4, 0)
def MonsterStartTest4Vector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(4, n_, 2)
def MonsterAddTestarrayofstring(b_:flatbuffers_builder, testarrayofstring:int):
    b_.PrependUOffsetTRelativeSlot(10, testarrayofstring, 0)
def MonsterStartTestarrayofstringVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(4, n_, 4)
def MonsterCreateTestarrayofstringVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(4, v_.length, 4)
    reverse(v_) e_: b_.PrependUOffsetTRelative(e_)
    b_.EndVector(v_.length)
def MonsterAddTestarrayoftables(b_:flatbuffers_builder, testarrayoftables:int):
    b_.PrependUOffsetTRelativeSlot(11, testarrayoftables, 0)
def MonsterStartTestarrayoftablesVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(4, n_, 4)
def MonsterCreateTestarrayoftablesVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(4, v_.length, 4)
    reverse(v_) e_: b_.PrependUOffsetTRelative(e_)
    b_.EndVector(v_.length)
def MonsterAddEnemy(b_:flatbuffers_builder, enemy:int):
    b_.PrependUOffsetTRelativeSlot(12, enemy, 0)
def MonsterAddTestnestedflatbuffer(b_:flatbuffers_builder, testnestedflatbuffer:int):
    b_.PrependUOffsetTRelativeSlot(13, testnestedflatbuffer, 0)
def MonsterStartTestnestedflatbufferVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(1, n_, 1)
def MonsterCreateTestnestedflatbufferVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(1, v_.length, 1)
    reverse(v_) e_: b_.PrependUint8(e_)
    b_.EndVector(v_.length)
def MonsterAddTestempty(b_:flatbuffers_builder, testempty:int):
    b_.PrependUOffsetTRelativeSlot(14, testempty, 0)
def MonsterAddTestbool(b_:flatbuffers_builder, testbool:int):
    b_.PrependBoolSlot(15, testbool, 0)
def MonsterAddTesthashs32Fnv1(b_:flatbuffers_builder, testhashs32_fnv1:int):
    b_.PrependInt32Slot(16, testhashs32_fnv1, 0)
def MonsterAddTesthashu32Fnv1(b_:flatbuffers_builder, testhashu32_fnv1:int):
    b_.PrependUint32Slot(17, testhashu32_fnv1, 0)
def MonsterAddTesthashs64Fnv1(b_:flatbuffers_builder, testhashs64_fnv1:int):
    b_.PrependInt64Slot(18, testhashs64_fnv1, 0)
def MonsterAddTesthashu64Fnv1(b_:flatbuffers_builder, testhashu64_fnv1:int):
    b_.PrependUint64Slot(19, testhashu64_fnv1, 0)
def MonsterAddTesthashs32Fnv1a(b_:flatbuffers_builder, testhashs32_fnv1a:int):
    b_.PrependInt32Slot(20, testhashs32_fnv1a, 0)
def MonsterAddTesthashu32Fnv1a(b_:flatbuffers_builder, testhashu32_fnv1a:int):
    b_.PrependUint32Slot(21, testhashu32_fnv1a, 0)
def MonsterAddTesthashs64Fnv1a(b_:flatbuffers_builder, testhashs64_fnv1a:int):
    b_.PrependInt64Slot(22, testhashs64_fnv1a, 0)
def MonsterAddTesthashu64Fnv1a(b_:flatbuffers_builder, testhashu64_fnv1a:int):
    b_.PrependUint64Slot(23, testhashu64_fnv1a, 0)
def MonsterAddTestarrayofbools(b_:flatbuffers_builder, testarrayofbools:int):
    b_.PrependUOffsetTRelativeSlot(24, testarrayofbools, 0)
def MonsterStartTestarrayofboolsVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(1, n_, 1)
def MonsterCreateTestarrayofboolsVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(1, v_.length, 1)
    reverse(v_) e_: b_.PrependBool(e_)
    b_.EndVector(v_.length)
def MonsterAddTestf(b_:flatbuffers_builder, testf:float):
    b_.PrependFloat32Slot(25, testf, 3.14159)
def MonsterAddTestf2(b_:flatbuffers_builder, testf2:float):
    b_.PrependFloat32Slot(26, testf2, 3.0)
def MonsterAddTestf3(b_:flatbuffers_builder, testf3:float):
    b_.PrependFloat32Slot(27, testf3, 0.0)
def MonsterAddTestarrayofstring2(b_:flatbuffers_builder, testarrayofstring2:int):
    b_.PrependUOffsetTRelativeSlot(28, testarrayofstring2, 0)
def MonsterStartTestarrayofstring2Vector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(4, n_, 4)
def MonsterCreateTestarrayofstring2Vector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(4, v_.length, 4)
    reverse(v_) e_: b_.PrependUOffsetTRelative(e_)
    b_.EndVector(v_.length)
def MonsterAddTestarrayofsortedstruct(b_:flatbuffers_builder, testarrayofsortedstruct:int):
    b_.PrependUOffsetTRelativeSlot(29, testarrayofsortedstruct, 0)
def MonsterStartTestarrayofsortedstructVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(8, n_, 4)
def MonsterAddFlex(b_:flatbuffers_builder, flex:int):
    b_.PrependUOffsetTRelativeSlot(30, flex, 0)
def MonsterStartFlexVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(1, n_, 1)
def MonsterCreateFlexVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(1, v_.length, 1)
    reverse(v_) e_: b_.PrependUint8(e_)
    b_.EndVector(v_.length)
def MonsterAddTest5(b_:flatbuffers_builder, test5:int):
    b_.PrependUOffsetTRelativeSlot(31, test5, 0)
def MonsterStartTest5Vector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(4, n_, 2)
def MonsterAddVectorOfLongs(b_:flatbuffers_builder, vector_of_longs:int):
    b_.PrependUOffsetTRelativeSlot(32, vector_of_longs, 0)
def MonsterStartVectorOfLongsVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(8, n_, 8)
def MonsterCreateVectorOfLongsVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(8, v_.length, 8)
    reverse(v_) e_: b_.PrependInt64(e_)
    b_.EndVector(v_.length)
def MonsterAddVectorOfDoubles(b_:flatbuffers_builder, vector_of_doubles:int):
    b_.PrependUOffsetTRelativeSlot(33, vector_of_doubles, 0)
def MonsterStartVectorOfDoublesVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(8, n_, 8)
def MonsterCreateVectorOfDoublesVector(b_:flatbuffers_builder, v_:[float]):
    b_.StartVector(8, v_.length, 8)
    reverse(v_) e_: b_.PrependFloat64(e_)
    b_.EndVector(v_.length)
def MonsterAddParentNamespaceTest(b_:flatbuffers_builder, parent_namespace_test:int):
    b_.PrependUOffsetTRelativeSlot(34, parent_namespace_test, 0)
def MonsterAddVectorOfReferrables(b_:flatbuffers_builder, vector_of_referrables:int):
    b_.PrependUOffsetTRelativeSlot(35, vector_of_referrables, 0)
def MonsterStartVectorOfReferrablesVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(4, n_, 4)
def MonsterCreateVectorOfReferrablesVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(4, v_.length, 4)
    reverse(v_) e_: b_.PrependUOffsetTRelative(e_)
    b_.EndVector(v_.length)
def MonsterAddSingleWeakReference(b_:flatbuffers_builder, single_weak_reference:int):
    b_.PrependUint64Slot(36, single_weak_reference, 0)
def MonsterAddVectorOfWeakReferences(b_:flatbuffers_builder, vector_of_weak_references:int):
    b_.PrependUOffsetTRelativeSlot(37, vector_of_weak_references, 0)
def MonsterStartVectorOfWeakReferencesVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(8, n_, 8)
def MonsterCreateVectorOfWeakReferencesVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(8, v_.length, 8)
    reverse(v_) e_: b_.PrependUint64(e_)
    b_.EndVector(v_.length)
def MonsterAddVectorOfStrongReferrables(b_:flatbuffers_builder, vector_of_strong_referrables:int):
    b_.PrependUOffsetTRelativeSlot(38, vector_of_strong_referrables, 0)
def MonsterStartVectorOfStrongReferrablesVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(4, n_, 4)
def MonsterCreateVectorOfStrongReferrablesVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(4, v_.length, 4)
    reverse(v_) e_: b_.PrependUOffsetTRelative(e_)
    b_.EndVector(v_.length)
def MonsterAddCoOwningReference(b_:flatbuffers_builder, co_owning_reference:int):
    b_.PrependUint64Slot(39, co_owning_reference, 0)
def MonsterAddVectorOfCoOwningReferences(b_:flatbuffers_builder, vector_of_co_owning_references:int):
    b_.PrependUOffsetTRelativeSlot(40, vector_of_co_owning_references, 0)
def MonsterStartVectorOfCoOwningReferencesVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(8, n_, 8)
def MonsterCreateVectorOfCoOwningReferencesVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(8, v_.length, 8)
    reverse(v_) e_: b_.PrependUint64(e_)
    b_.EndVector(v_.length)
def MonsterAddNonOwningReference(b_:flatbuffers_builder, non_owning_reference:int):
    b_.PrependUint64Slot(41, non_owning_reference, 0)
def MonsterAddVectorOfNonOwningReferences(b_:flatbuffers_builder, vector_of_non_owning_references:int):
    b_.PrependUOffsetTRelativeSlot(42, vector_of_non_owning_references, 0)
def MonsterStartVectorOfNonOwningReferencesVector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(8, n_, 8)
def MonsterCreateVectorOfNonOwningReferencesVector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(8, v_.length, 8)
    reverse(v_) e_: b_.PrependUint64(e_)
    b_.EndVector(v_.length)
def MonsterEnd(b_:flatbuffers_builder):
    b_.EndObject()

struct TypeAliases : flatbuffers_handle
    def i8():
        buf_.flatbuffers_field_int8(pos_, 4, 0)
    def u8():
        buf_.flatbuffers_field_int8(pos_, 6, 0)
    def i16():
        buf_.flatbuffers_field_int16(pos_, 8, 0)
    def u16():
        buf_.flatbuffers_field_int16(pos_, 10, 0)
    def i32():
        buf_.flatbuffers_field_int32(pos_, 12, 0)
    def u32():
        buf_.flatbuffers_field_int32(pos_, 14, 0)
    def i64():
        buf_.flatbuffers_field_int64(pos_, 16, 0)
    def u64():
        buf_.flatbuffers_field_int64(pos_, 18, 0)
    def f32():
        buf_.flatbuffers_field_float32(pos_, 20, 0.0)
    def f64():
        buf_.flatbuffers_field_float64(pos_, 22, 0.0)
    def v8(i:int):
        buf_.read_int8_le(buf_.flatbuffers_field_vector(pos_, 24) + i * 1)
    def v8_length():
        buf_.flatbuffers_field_vector_len(pos_, 24)
    def vf64(i:int):
        buf_.read_float64_le(buf_.flatbuffers_field_vector(pos_, 26) + i * 8)
    def vf64_length():
        buf_.flatbuffers_field_vector_len(pos_, 26)

def GetRootAsTypeAliases(buf:string): TypeAliases { buf, buf.flatbuffers_indirect(0) }

def TypeAliasesStart(b_:flatbuffers_builder):
    b_.StartObject(12)
def TypeAliasesAddI8(b_:flatbuffers_builder, i8:int):
    b_.PrependInt8Slot(0, i8, 0)
def TypeAliasesAddU8(b_:flatbuffers_builder, u8:int):
    b_.PrependUint8Slot(1, u8, 0)
def TypeAliasesAddI16(b_:flatbuffers_builder, i16:int):
    b_.PrependInt16Slot(2, i16, 0)
def TypeAliasesAddU16(b_:flatbuffers_builder, u16:int):
    b_.PrependUint16Slot(3, u16, 0)
def TypeAliasesAddI32(b_:flatbuffers_builder, i32:int):
    b_.PrependInt32Slot(4, i32, 0)
def TypeAliasesAddU32(b_:flatbuffers_builder, u32:int):
    b_.PrependUint32Slot(5, u32, 0)
def TypeAliasesAddI64(b_:flatbuffers_builder, i64:int):
    b_.PrependInt64Slot(6, i64, 0)
def TypeAliasesAddU64(b_:flatbuffers_builder, u64:int):
    b_.PrependUint64Slot(7, u64, 0)
def TypeAliasesAddF32(b_:flatbuffers_builder, f32:float):
    b_.PrependFloat32Slot(8, f32, 0.0)
def TypeAliasesAddF64(b_:flatbuffers_builder, f64:float):
    b_.PrependFloat64Slot(9, f64, 0.0)
def TypeAliasesAddV8(b_:flatbuffers_builder, v8:int):
    b_.PrependUOffsetTRelativeSlot(10, v8, 0)
def TypeAliasesStartV8Vector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(1, n_, 1)
def TypeAliasesCreateV8Vector(b_:flatbuffers_builder, v_:[int]):
    b_.StartVector(1, v_.length, 1)
    reverse(v_) e_: b_.PrependInt8(e_)
    b_.EndVector(v_.length)
def TypeAliasesAddVf64(b_:flatbuffers_builder, vf64:int):
    b_.PrependUOffsetTRelativeSlot(11, vf64, 0)
def TypeAliasesStartVf64Vector(b_:flatbuffers_builder, n_:int):
    b_.StartVector(8, n_, 8)
def TypeAliasesCreateVf64Vector(b_:flatbuffers_builder, v_:[float]):
    b_.StartVector(8, v_.length, 8)
    reverse(v_) e_: b_.PrependFloat64(e_)
    b_.EndVector(v_.length)
def TypeAliasesEnd(b_:flatbuffers_builder):
    b_.EndObject()

