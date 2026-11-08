--  Generated Code Do Not Modify


with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.layer.drop.PlacedLayerFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype AllBinaryLayerFactoryInterface_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
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
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   procedure Initialize_Fields (This : in out PlacedLayerFactory'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PlacedLayerFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PlacedLayerFactory_Access is
      This : constant PlacedLayerFactory_Access := new PlacedLayerFactory;
   begin
      PlacedLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure clear (This : in out PlacedLayerFactory) is
   begin
        This.list.clear;
   end clear;

   function getInstance return PlacedLayerFactory_Access is
   begin
        return PlacedLayerFactory_Access (PlacedLayerFactory_Package.instance);
   end getInstance;

   function getSize (This : in out PlacedLayerFactory) return Integer is
   begin
        return This.list.size;
   end getSize;

   function getRandomInstance (This : in out PlacedLayerFactory) return AllBinaryLayerFactoryInterface_Access is
   begin
        return AllBinaryLayerFactoryInterface_Access (This.basicArrayListUtil.getRandom (This.list));
   end getRandomInstance;

   procedure add (This : in out PlacedLayerFactory; layerInterfaceFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class) is
      layerInterfaceFactoryInterface : constant AllBinaryLayerFactoryInterface_Access := AllBinaryLayerFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
   begin
        This.list.add (AllBinaryLayerFactoryInterface_Package.Java_Object_Access_From_AllBinaryLayerFactoryInterface (layerInterfaceFactoryInterface));
   end add;

begin
   null;
   instance := PlacedLayerFactory_Package.Create;

end org.allbinary.game.layer.drop.PlacedLayerFactory_Package;


