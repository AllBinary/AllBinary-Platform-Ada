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
limited with org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;
package org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References is
   type HashMapJDialogListenerInterface_Access is access all org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package.HashMapJDialogListenerInterface'Class;
   type HashMapJDialogListenerInterface_Access_Array is array (Natural range <>) of HashMapJDialogListenerInterface_Access;
   type HashMapJDialogListenerInterface_Access_Array_Access is access all HashMapJDialogListenerInterface_Access_Array;
   type HashMapJDialogListenerInterface_Access_Array_Access_Array is array (Natural range <>) of HashMapJDialogListenerInterface_Access_Array_Access;
   type HashMapJDialogListenerInterface_Access_Array_Access_Array_Access is access all HashMapJDialogListenerInterface_Access_Array_Access_Array;
   type HashMapJDialogListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HashMapJDialogListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : HashMapJDialogListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HashMapJDialogListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HashMapJDialogListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HashMapJDialogListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in HashMapJDialogListenerInterface_Access_Array_Object'Class then HashMapJDialogListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type HashMapJDialogListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HashMapJDialogListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HashMapJDialogListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HashMapJDialogListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HashMapJDialogListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HashMapJDialogListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HashMapJDialogListenerInterface_Access_Array_Access_Array_Object'Class then HashMapJDialogListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References;

with org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type HashMapJDialogListenerInterface is interface;
   subtype HashMapJDialogListenerInterface_Access is org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.HashMapJDialogListenerInterface_Access;
   function "=" (Left, Right : HashMapJDialogListenerInterface_Access) return Boolean renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References."=";
   subtype HashMapJDialogListenerInterface_Access_Array is org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.HashMapJDialogListenerInterface_Access_Array;
   function "=" (Left, Right : HashMapJDialogListenerInterface_Access_Array) return Boolean renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References."=";
   subtype HashMapJDialogListenerInterface_Access_Array_Access is org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.HashMapJDialogListenerInterface_Access_Array_Access;
   function "=" (Left, Right : HashMapJDialogListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References."=";
   function Java_Box (Value : HashMapJDialogListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.Java_Box;
   function Java_Unbox_HashMapJDialogListenerInterface_Access_Array (Value : access Java_Object'Class) return HashMapJDialogListenerInterface_Access_Array_Access renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.Java_Unbox_HashMapJDialogListenerInterface_Access_Array;
   subtype HashMapJDialogListenerInterface_Access_Array_Access_Array is org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.HashMapJDialogListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HashMapJDialogListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References."=";
   subtype HashMapJDialogListenerInterface_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.HashMapJDialogListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HashMapJDialogListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References."=";
   function Java_Box (Value : HashMapJDialogListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.Java_Box;
   function Java_Unbox_HashMapJDialogListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return HashMapJDialogListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package_References.Java_Unbox_HashMapJDialogListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_HashMapJDialogListenerInterface (Value : HashMapJDialogListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onHashMap (This : in out HashMapJDialogListenerInterface; hashMap_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;


