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

limited with org.allbinary.gui.dialog.ExitCloseListener_Package;
package org.allbinary.gui.dialog.ExitCloseListener_Package_References is
   type ExitCloseListener_Access is access all org.allbinary.gui.dialog.ExitCloseListener_Package.ExitCloseListener'Class;
   type ExitCloseListener_Access_Array is array (Natural range <>) of ExitCloseListener_Access;
   type ExitCloseListener_Access_Array_Access is access all ExitCloseListener_Access_Array;
   type ExitCloseListener_Access_Array_Access_Array is array (Natural range <>) of ExitCloseListener_Access_Array_Access;
   type ExitCloseListener_Access_Array_Access_Array_Access is access all ExitCloseListener_Access_Array_Access_Array;
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
   subtype ExitCloseListener_Access_Array_Access_Array is org.allbinary.gui.dialog.ExitCloseListener_Package_References.ExitCloseListener_Access_Array_Access_Array;
   function "=" (Left, Right : ExitCloseListener_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.dialog.ExitCloseListener_Package_References."=";
   subtype ExitCloseListener_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.ExitCloseListener_Package_References.ExitCloseListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExitCloseListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.ExitCloseListener_Package_References."=";

   type ExitCloseListener is new Java_Object and CloseJDialogListenerInterface with null record;

   procedure Initialize (This : in out ExitCloseListener'Class);
   function Create return ExitCloseListener_Access;
   procedure onClose (This : in out ExitCloseListener);

end org.allbinary.gui.dialog.ExitCloseListener_Package;


