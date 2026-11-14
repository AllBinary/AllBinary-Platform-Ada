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
limited with org.allbinary.gui.dialog.ExitCloseListener_Package;
package org.allbinary.gui.dialog.ExitCloseListener_Package_References is
   type ExitCloseListener_Access is access all org.allbinary.gui.dialog.ExitCloseListener_Package.ExitCloseListener'Class;
   type ExitCloseListener_Access_Array is array (Natural range <>) of ExitCloseListener_Access;
   type ExitCloseListener_Access_Array_Access is access all ExitCloseListener_Access_Array;
   type ExitCloseListener_Access_Array_Access_Array is array (Natural range <>) of ExitCloseListener_Access_Array_Access;
   type ExitCloseListener_Access_Array_Access_Array_Access is access all ExitCloseListener_Access_Array_Access_Array;
   type ExitCloseListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExitCloseListener_Access_Array_Access;
   end record;
   function Java_Box (Value : ExitCloseListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExitCloseListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExitCloseListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExitCloseListener_Access_Array_Access is (if Value /= null and then Value.all in ExitCloseListener_Access_Array_Object'Class then ExitCloseListener_Access_Array_Object'Class (Value.all).Value else null);
   type ExitCloseListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExitCloseListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ExitCloseListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExitCloseListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExitCloseListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExitCloseListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ExitCloseListener_Access_Array_Access_Array_Object'Class then ExitCloseListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.gui.dialog.ExitCloseListener_Package_References;

with org.allbinary.gui.dialog.ExitCloseListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package; use org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package;

package org.allbinary.gui.dialog.ExitCloseListener_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ExitCloseListener_Access is org.allbinary.gui.dialog.ExitCloseListener_Package_References.ExitCloseListener_Access;
   function "=" (Left, Right : ExitCloseListener_Access) return Boolean renames org.allbinary.gui.dialog.ExitCloseListener_Package_References."=";
   subtype ExitCloseListener_Access_Array is org.allbinary.gui.dialog.ExitCloseListener_Package_References.ExitCloseListener_Access_Array;
   function "=" (Left, Right : ExitCloseListener_Access_Array) return Boolean renames org.allbinary.gui.dialog.ExitCloseListener_Package_References."=";
   subtype ExitCloseListener_Access_Array_Access is org.allbinary.gui.dialog.ExitCloseListener_Package_References.ExitCloseListener_Access_Array_Access;
   function "=" (Left, Right : ExitCloseListener_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.ExitCloseListener_Package_References."=";
   function Java_Box (Value : ExitCloseListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.ExitCloseListener_Package_References.Java_Box;
   function Java_Unbox_ExitCloseListener_Access_Array (Value : access Java_Object'Class) return ExitCloseListener_Access_Array_Access renames org.allbinary.gui.dialog.ExitCloseListener_Package_References.Java_Unbox_ExitCloseListener_Access_Array;
   subtype ExitCloseListener_Access_Array_Access_Array is org.allbinary.gui.dialog.ExitCloseListener_Package_References.ExitCloseListener_Access_Array_Access_Array;
   function "=" (Left, Right : ExitCloseListener_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.dialog.ExitCloseListener_Package_References."=";
   subtype ExitCloseListener_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.ExitCloseListener_Package_References.ExitCloseListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExitCloseListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.ExitCloseListener_Package_References."=";
   function Java_Box (Value : ExitCloseListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.gui.dialog.ExitCloseListener_Package_References.Java_Box;
   function Java_Unbox_ExitCloseListener_Access_Array_Access_Array (Value : access Java_Object'Class) return ExitCloseListener_Access_Array_Access_Array_Access renames org.allbinary.gui.dialog.ExitCloseListener_Package_References.Java_Unbox_ExitCloseListener_Access_Array_Access_Array;

   type ExitCloseListener is new Java_Object and CloseJDialogListenerInterface with null record;

   procedure Initialize (This : in out ExitCloseListener'Class);
   function Create return ExitCloseListener_Access;
   procedure onClose (This : in out ExitCloseListener);

end org.allbinary.gui.dialog.ExitCloseListener_Package;


