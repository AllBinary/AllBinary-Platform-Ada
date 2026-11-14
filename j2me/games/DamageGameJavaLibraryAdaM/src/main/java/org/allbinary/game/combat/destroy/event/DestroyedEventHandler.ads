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

with AllBinary_Java;
limited with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
package org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References is
   type DestroyedEventHandler_Access is access all org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package.DestroyedEventHandler'Class;
   type DestroyedEventHandler_Access_Array is array (Natural range <>) of DestroyedEventHandler_Access;
   type DestroyedEventHandler_Access_Array_Access is access all DestroyedEventHandler_Access_Array;
   type DestroyedEventHandler_Access_Array_Access_Array is array (Natural range <>) of DestroyedEventHandler_Access_Array_Access;
   type DestroyedEventHandler_Access_Array_Access_Array_Access is access all DestroyedEventHandler_Access_Array_Access_Array;
   type DestroyedEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DestroyedEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : DestroyedEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DestroyedEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DestroyedEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DestroyedEventHandler_Access_Array_Access is (if Value /= null and then Value.all in DestroyedEventHandler_Access_Array_Object'Class then DestroyedEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type DestroyedEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DestroyedEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DestroyedEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DestroyedEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DestroyedEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DestroyedEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DestroyedEventHandler_Access_Array_Access_Array_Object'Class then DestroyedEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References;

with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DestroyedEventHandler_Access is org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.DestroyedEventHandler_Access;
   function "=" (Left, Right : DestroyedEventHandler_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References."=";
   subtype DestroyedEventHandler_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.DestroyedEventHandler_Access_Array;
   function "=" (Left, Right : DestroyedEventHandler_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References."=";
   subtype DestroyedEventHandler_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.DestroyedEventHandler_Access_Array_Access;
   function "=" (Left, Right : DestroyedEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References."=";
   function Java_Box (Value : DestroyedEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.Java_Box;
   function Java_Unbox_DestroyedEventHandler_Access_Array (Value : access Java_Object'Class) return DestroyedEventHandler_Access_Array_Access renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.Java_Unbox_DestroyedEventHandler_Access_Array;
   subtype DestroyedEventHandler_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.DestroyedEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyedEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References."=";
   subtype DestroyedEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.DestroyedEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyedEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References."=";
   function Java_Box (Value : DestroyedEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.Java_Box;
   function Java_Unbox_DestroyedEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return DestroyedEventHandler_Access_Array_Access_Array_Access renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package_References.Java_Unbox_DestroyedEventHandler_Access_Array_Access_Array;

   type DestroyedEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : DestroyedEventHandler_Access;

   procedure Initialize (This : in out DestroyedEventHandler'Class);
   function Create return DestroyedEventHandler_Access;
   function getInstance return DestroyedEventHandler_Access;
   procedure addListener (This : in out DestroyedEventHandler; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   procedure removeAllListeners (This : in out DestroyedEventHandler);
   procedure removeListener (This : in out DestroyedEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out DestroyedEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out DestroyedEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;


