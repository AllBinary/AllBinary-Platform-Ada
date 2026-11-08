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


with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package; use org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package_References;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.combat.damage.DamageUtil_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
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
   subtype DamageableInterface_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access;
   function "=" (Left, Right : DamageableInterface_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array;
   function "=" (Left, Right : DamageableInterface_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access;
   function "=" (Left, Right : DamageableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DamageableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   procedure Initialize_Fields (This : in out DamageUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.COLLIDE := To_Unbounded_String ("collide");
   end Initialize_Fields;


   function getInstance return DamageUtil_Access is
   begin
        return DamageUtil_Access (DamageUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out DamageUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DamageUtil_Access is
      This : constant DamageUtil_Access := new DamageUtil;
   begin
      DamageUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out DamageUtil; damageableInterface_Param : access DamageableInterface_Package.DamageableInterface'Class; damageableInterface2_Param : access DamageableInterface_Package.DamageableInterface'Class) is
      damageableInterface : constant DamageableInterface_Access := DamageableInterface_Access (damageableInterface_Param);
      damageableInterface2 : constant DamageableInterface_Access := DamageableInterface_Access (damageableInterface2_Param);
   begin
        damageableInterface.damage (damageableInterface2.getDamage (0), 0);
   end process;

   --  throws Exception
   procedure debugDamage (This : in out DamageUtil; collidableInterfaceCompositeInterface1_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      collidableInterfaceCompositeInterface1 : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface1_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      damage : Integer;
      stringBuffer : StringMaker_Access;
   begin
        collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (collidableInterfaceCompositeInterface);
        damage := collidableDestroyableDamageableLayer.getDamage (0);
        if (damage) > (20000) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Collision "));
            stringBuffer.append (collidableInterfaceCompositeInterface1.toString);
            stringBuffer.append (To_Unbounded_String (" with: "));
            stringBuffer.append (collidableInterfaceCompositeInterface.toString);
            stringBuffer.append (To_Unbounded_String (" damage: "));
            stringBuffer.appendint (damage);
            This.logUtil.putF (stringBuffer.toString, collidableInterfaceCompositeInterface1, This.COLLIDE);
        end if;
   end debugDamage;

begin
   null;
   instance := DamageUtil_Package.Create;

end org.allbinary.game.combat.damage.DamageUtil_Package;


