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
limited with org.allbinary.logic.util.queue.QueueInterface_Package;
package org.allbinary.logic.util.queue.QueueInterface_Package_References is
   type QueueInterface_Access is access all org.allbinary.logic.util.queue.QueueInterface_Package.QueueInterface'Class;
   type QueueInterface_Access_Array is array (Natural range <>) of QueueInterface_Access;
   type QueueInterface_Access_Array_Access is access all QueueInterface_Access_Array;
   type QueueInterface_Access_Array_Access_Array is array (Natural range <>) of QueueInterface_Access_Array_Access;
   type QueueInterface_Access_Array_Access_Array_Access is access all QueueInterface_Access_Array_Access_Array;
   type QueueInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QueueInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : QueueInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QueueInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QueueInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QueueInterface_Access_Array_Access is (if Value /= null and then Value.all in QueueInterface_Access_Array_Object'Class then QueueInterface_Access_Array_Object'Class (Value.all).Value else null);
   type QueueInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QueueInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : QueueInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QueueInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QueueInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QueueInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in QueueInterface_Access_Array_Access_Array_Object'Class then QueueInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.queue.QueueInterface_Package_References;

with org.allbinary.logic.util.queue.QueueInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.queue.QueueInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type QueueInterface is interface;
   subtype QueueInterface_Access is org.allbinary.logic.util.queue.QueueInterface_Package_References.QueueInterface_Access;
   function "=" (Left, Right : QueueInterface_Access) return Boolean renames org.allbinary.logic.util.queue.QueueInterface_Package_References."=";
   subtype QueueInterface_Access_Array is org.allbinary.logic.util.queue.QueueInterface_Package_References.QueueInterface_Access_Array;
   function "=" (Left, Right : QueueInterface_Access_Array) return Boolean renames org.allbinary.logic.util.queue.QueueInterface_Package_References."=";
   subtype QueueInterface_Access_Array_Access is org.allbinary.logic.util.queue.QueueInterface_Package_References.QueueInterface_Access_Array_Access;
   function "=" (Left, Right : QueueInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.queue.QueueInterface_Package_References."=";
   function Java_Box (Value : QueueInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.queue.QueueInterface_Package_References.Java_Box;
   function Java_Unbox_QueueInterface_Access_Array (Value : access Java_Object'Class) return QueueInterface_Access_Array_Access renames org.allbinary.logic.util.queue.QueueInterface_Package_References.Java_Unbox_QueueInterface_Access_Array;
   subtype QueueInterface_Access_Array_Access_Array is org.allbinary.logic.util.queue.QueueInterface_Package_References.QueueInterface_Access_Array_Access_Array;
   function "=" (Left, Right : QueueInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.queue.QueueInterface_Package_References."=";
   subtype QueueInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.queue.QueueInterface_Package_References.QueueInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QueueInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.queue.QueueInterface_Package_References."=";
   function Java_Box (Value : QueueInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.queue.QueueInterface_Package_References.Java_Box;
   function Java_Unbox_QueueInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return QueueInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.util.queue.QueueInterface_Package_References.Java_Unbox_QueueInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_QueueInterface (Value : QueueInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function offer (This : in out QueueInterface; anyType_Param : access Java_Object'Class) return Boolean is abstract;
   procedure offer (This : in out QueueInterface; anyType_Param : access Java_Object'Class) is abstract;
   procedure remove (This : in out QueueInterface; anyType_Param : access Java_Object'Class) is abstract;
   function remove (This : in out QueueInterface) return Java_Object_Access is abstract;

end org.allbinary.logic.util.queue.QueueInterface_Package;


