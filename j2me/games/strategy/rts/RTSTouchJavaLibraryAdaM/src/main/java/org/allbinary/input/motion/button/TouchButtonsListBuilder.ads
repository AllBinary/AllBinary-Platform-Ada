-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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

limited with org.allbinary.input.motion.button.TouchButtonsListBuilder_Package;
package org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References is
   type TouchButtonsListBuilder_Access is access all org.allbinary.input.motion.button.TouchButtonsListBuilder_Package.TouchButtonsListBuilder'Class;
   type TouchButtonsListBuilder_Access_Array is array (Natural range <>) of TouchButtonsListBuilder_Access;
   type TouchButtonsListBuilder_Access_Array_Access is access all TouchButtonsListBuilder_Access_Array;
   type TouchButtonsListBuilder_Access_Array_Access_Array is array (Natural range <>) of TouchButtonsListBuilder_Access_Array_Access;
   type TouchButtonsListBuilder_Access_Array_Access_Array_Access is access all TouchButtonsListBuilder_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References;

with org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;

package org.allbinary.input.motion.button.TouchButtonsListBuilder_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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


   subtype TouchButtonsListBuilder_Access is org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References.TouchButtonsListBuilder_Access;
   function "=" (Left, Right : TouchButtonsListBuilder_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References."=";
   subtype TouchButtonsListBuilder_Access_Array is org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References.TouchButtonsListBuilder_Access_Array;
   function "=" (Left, Right : TouchButtonsListBuilder_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References."=";
   subtype TouchButtonsListBuilder_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References.TouchButtonsListBuilder_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsListBuilder_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References."=";
   subtype TouchButtonsListBuilder_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References.TouchButtonsListBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsListBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References."=";
   subtype TouchButtonsListBuilder_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References.TouchButtonsListBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsListBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsListBuilder_Package_References."=";

   type TouchButtonsListBuilder is new BaseTouchInput with record
      baseTouchInputList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out TouchButtonsListBuilder'Class);
   function Create return TouchButtonsListBuilder_Access;
   procedure addList (This : in out TouchButtonsListBuilder; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure add (This : in out TouchButtonsListBuilder; baseTouchInput_Param : access BaseTouchInput_Package.BaseTouchInput'Class);

end org.allbinary.input.motion.button.TouchButtonsListBuilder_Package;


