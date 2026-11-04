--  Generated Code Do Not Modify


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package; use org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.LayerManager_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   function "=" (Left, Right : TsUtil_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype SynchObject_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access;
   function "=" (Left, Right : SynchObject_Access) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array;
   function "=" (Left, Right : SynchObject_Access_Array) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access;
   function "=" (Left, Right : SynchObject_Access_Array_Access) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array_Access_Array is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access_Array;
   function "=" (Left, Right : SynchObject_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
   subtype SynchObject_Access_Array_Access_Array_Access is org.allbinary.thread.SynchObject_Package_References.SynchObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SynchObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.SynchObject_Package_References."=";
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
   subtype ABSystemWrapper_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access;
   function "=" (Left, Right : ABSystemWrapper_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array;
   function "=" (Left, Right : ABSystemWrapper_Access_Array) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype ABSystemWrapper_Access_Array_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABSystemWrapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.ABSystemWrapper_Package_References."=";
   subtype LayerManagerLoggingBase_Access is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access;
   function "=" (Left, Right : LayerManagerLoggingBase_Access) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array_Access is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array_Access;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array_Access_Array is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype LayerManagerLoggingBase_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManagerLoggingBase_Package_References.LayerManagerLoggingBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerLoggingBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerLoggingBase_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   function "=" (Left, Right : Layer_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   function "=" (Left, Right : Layer_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   function "=" (Left, Right : Layer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   procedure Initialize_Fields (This : in out LayerManager'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.systemWrapper := ABSystemWrapper_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.anyType := SynchObject_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out LayerManager'Class; layerManagerLogging_Param : access LayerManagerLoggingBase_Package.LayerManagerLoggingBase'Class) is
      layerManagerLogging : constant LayerManagerLoggingBase_Access := LayerManagerLoggingBase_Access (layerManagerLogging_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, LayerManager_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.layerManagerLogging := layerManagerLogging;
   end Initialize;

   function Create (layerManagerLogging_Param : access LayerManagerLoggingBase_Package.LayerManagerLoggingBase'Class) return LayerManager_Access is
      This : constant LayerManager_Access := new LayerManager;
   begin
      LayerManager_Package.Initialize (This.all, layerManagerLogging_Param);
      return This;
   end Create;

   function contains (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        return This.list.contains (Java_Object_Access (layerInterface));
   end contains;

   --  throws Exception
   procedure update (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      had : Boolean;
      nextLayerInterface : AllBinaryLayer_Access;
      size : Integer;
      index : Integer;
   begin
        had := This.list.remove (Java_Object_Access (layerInterface));
        if had then
            nextLayerInterface := null;
            size := This.list.size;
            for index in 0 .. (size) - 1 loop
                nextLayerInterface := AllBinaryLayer_Access (This.list.get (index));
                if (layerInterface.getZP) > (nextLayerInterface.getZP) then
                    This.list.addAt (index, Java_Object_Access (layerInterface));
                    return;
                end if;
            end loop;
            This.list.add (Java_Object_Access (layerInterface));
        end if;
   end update;

   --  throws Exception
   procedure insert (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      nextLayerInterface : AllBinaryLayer_Access;
      size : Integer;
      index : Integer;
   begin
        nextLayerInterface := null;
        size := This.list.size;
        for index in 0 .. (size) - 1 loop
            nextLayerInterface := AllBinaryLayer_Access (This.list.get (index));
            if (layerInterface.getZP) > (nextLayerInterface.getZP) then
                LayerManager'Class (This).appendAt (layerInterface, index);
                return;
            end if;
        end loop;
        LayerManager'Class (This).append (layerInterface);
   end insert;

   --  throws Exception
   procedure append (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.layerManagerLogging.append (layerInterface);
        This.list.add (Java_Object_Access (layerInterface));
   end append;

   --  throws Exception
   procedure appendAt (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.layerManagerLogging.appendAt (layerInterface, index);
        This.list.addAt (index, Java_Object_Access (layerInterface));
   end appendAt;

   --  throws Exception
   procedure remove (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      result : Boolean;
   begin
        begin  --  synchronized
            This.layerManagerLogging.remove (layerInterface);
            result := This.list.remove (Java_Object_Access (layerInterface));
            This.layerManagerLogging.removeResult (LayerManager_Access'(This'Unchecked_Access), layerInterface, result);
        end;
   end remove;

   function getLayerAt (This : in out LayerManager; index : Integer) return Layer_Access is
   begin
        return Layer_Access (This.list.objectArray (index));
   end getLayerAt;

   function getSize (This : in out LayerManager) return Integer is
   begin
        return This.list.size;
   end getSize;

   --  throws Exception
   procedure cleanup (This : in out LayerManager) is
   begin
        begin  --  synchronized
            This.list.clear;
            This.layerManagerLogging.clear;
            This.tsUtil.gc;
            This.tsUtil.gc;
        end;
   end cleanup;

   procedure paint (This : in out LayerManager; g_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
      comp : Layer_Access;
      index : Integer;
   begin
        begin  --  synchronized
            comp := null;
            index := This.list.size;
            while (Java_Pre_Decrement (index)) >= (0) loop
                comp := Layer_Access (This.list.objectArray (index));
                if ((comp) /= (null)) and then (comp.isVisible) then
                    comp.paint (g);
                end if;
            end loop;
        end;
   end paint;

   procedure contains (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := LayerManager'Class (This).contains (layerInterface_Param => layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end contains;

   procedure getLayerAt (This : in out LayerManager; index : Integer) is
      Java_Result : constant Layer_Access := LayerManager'Class (This).getLayerAt (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerAt;

end org.allbinary.layer.LayerManager_Package;


