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


with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package; use org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.CollidableInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package is

   subtype CollidableNeverCollideBehavior_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableNeverCollideBehavior_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableNeverCollideBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableNeverCollideBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableNeverCollideBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   procedure Initialize_Fields (This : in out CollidableNeverCollideBehaviorFactory'Class) is
   begin
      null;
      This.instance := CollidableNeverCollideBehavior_Package.Create (False);
   end Initialize_Fields;

   procedure Initialize (This : in out CollidableNeverCollideBehaviorFactory'Class) is
   begin
      CollidableBaseBehaviorFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CollidableNeverCollideBehaviorFactory_Access is
      This : constant CollidableNeverCollideBehaviorFactory_Access := new CollidableNeverCollideBehaviorFactory;
   begin
      CollidableNeverCollideBehaviorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CollidableNeverCollideBehaviorFactory_Access is
   begin
        return CollidableNeverCollideBehaviorFactory_Access (CollidableNeverCollideBehaviorFactory_Package.instanceC);
   end getInstance;

   function createBehavior (This : in out CollidableNeverCollideBehaviorFactory) return CollidableBaseBehavior_Access is
   begin
        return CollidableBaseBehavior_Access (This.instance);
   end createBehavior;

begin
   null;
   instanceC := CollidableNeverCollideBehaviorFactory_Package.Create;

end org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;


