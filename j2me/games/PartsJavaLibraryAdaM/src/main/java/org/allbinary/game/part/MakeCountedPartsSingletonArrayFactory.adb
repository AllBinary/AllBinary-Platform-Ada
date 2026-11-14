--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package; use org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterfaceCompositeInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package is

   package CountedPickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package CountedPickedUpLayerInterfaceFactoryPool_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   function "=" (Left, Right : PartInterface_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   procedure Initialize_Fields (This : in out MakeCountedPartsSingletonArrayFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.list := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out MakeCountedPartsSingletonArrayFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MakeCountedPartsSingletonArrayFactory_Access is
      This : constant MakeCountedPartsSingletonArrayFactory_Access := new MakeCountedPartsSingletonArrayFactory;
   begin
      MakeCountedPartsSingletonArrayFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MakeCountedPartsSingletonArrayFactory_Access is
   begin
        return MakeCountedPartsSingletonArrayFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getUpdated (This : in out MakeCountedPartsSingletonArrayFactory; partInterfaceArray : PartInterface_Access_Array_Access) return PartInterface_Access_Array_Access is
      index : Integer;
      countedBasicArrayList : BasicArrayList_Access;
      layerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactory_Access;
      size : Integer;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
      newPartInterfaceArray : PartInterface_Access_Array_Access;
      newSize : Integer;
   begin
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        for index in 0 .. (partInterfaceArray'Length) - 1 loop
            This.list.add (PartInterface_Package.Java_Object_Access_From_PartInterface (partInterfaceArray (index)));
        end loop;
        countedBasicArrayList := CountedPickedUpLayerInterfaceFactoryPool_Package.getInstance.getList;
        layerInterfaceFactoryInterface := null;
        size := countedBasicArrayList.size;
        for index in 0 .. (size) - 1 loop
            layerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Access (countedBasicArrayList.objectArray (index));
            This.list.add (Java_Object_Access (CountedLayerInterfaceFactoryPart_Package.Create (0, layerInterfaceFactoryInterface)));
        end loop;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Total Parts: "));
        stringBuffer.appendint (This.list.size);
        stringBuffer.append (To_Unbounded_String (" Counted: "));
        stringBuffer.appendint (countedBasicArrayList.size);
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (stringBuffer.toString, MakeCountedPartsSingletonArrayFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        newPartInterfaceArray := new PartInterface_Access_Array'(0 .. (This.list.size) - 1 => null);
        newSize := newPartInterfaceArray'Length;
        for index in 0 .. (newSize) - 1 loop
            newPartInterfaceArray (index) := PartInterface_Access (This.list.get (index));
        end loop;
        return newPartInterfaceArray;
   end getUpdated;

   procedure getUpdated (This : in out MakeCountedPartsSingletonArrayFactory; partInterfaceArray : PartInterface_Access_Array_Access) is
      Java_Result : constant PartInterface_Access_Array_Access := MakeCountedPartsSingletonArrayFactory'Class (This).getUpdated (partInterfaceArray => partInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUpdated;

begin
   null;
   instance := MakeCountedPartsSingletonArrayFactory_Package.Create;

end org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package;


