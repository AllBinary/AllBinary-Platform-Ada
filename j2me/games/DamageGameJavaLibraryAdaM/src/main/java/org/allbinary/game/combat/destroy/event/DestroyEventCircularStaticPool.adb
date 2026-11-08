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


with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package; use org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
with org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package; use org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.BaseCircularPool_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
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
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package is

   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
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
   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype DestroyedEvent_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access;
   function "=" (Left, Right : DestroyedEvent_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array;
   function "=" (Left, Right : DestroyedEvent_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access;
   function "=" (Left, Right : DestroyedEvent_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyedEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   subtype DestroyedEvent_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyedEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References."=";
   procedure Initialize_Fields (This : in out DestroyEventCircularStaticPool'Class) is
   begin
      null;
      This.EVENT_POOL := AllBinaryEventCircularPool_Package.Create (20);
   end Initialize_Fields;


   function getInstance return DestroyEventCircularStaticPool_Access is
   begin
        return DestroyEventCircularStaticPool_Access (DestroyEventCircularStaticPool_Package.instance);
   end getInstance;

   procedure Initialize (This : in out DestroyEventCircularStaticPool'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DestroyEventCircularStaticPool_Access is
      This : constant DestroyEventCircularStaticPool_Access := new DestroyEventCircularStaticPool;
   begin
      DestroyEventCircularStaticPool_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out DestroyEventCircularStaticPool; combatGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      combatGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (combatGameCanvas_Param);
   begin
        This.EVENT_POOL.initAllBinaryEventCircularPool (DestroyEventFactory_Package.Create (combatGameCanvas));
   end init;

   --  throws Exception
   function getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return DestroyedEvent_Access is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      destroyedEvent : DestroyedEvent_Access;
   begin
        destroyedEvent := DestroyedEvent_Access (This.EVENT_POOL.getNextInstance);
        destroyedEvent.setLayerInterfaceForCircularStaticPool (layerInterface);
        return destroyedEvent;
   end getInstanceForLayer;

   procedure getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant DestroyedEvent_Access := DestroyEventCircularStaticPool'Class (This).getInstanceForLayer (layerInterface_Param => layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForLayer;

begin
   null;
   instance := DestroyEventCircularStaticPool_Package.Create;

end org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;


