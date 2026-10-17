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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.init.InitInterface_Package; use org.allbinary.init.InitInterface_Package;

package org.allbinary.init.Init_Package is

   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type Init is tagged;
   type Init_Access is access all Init'Class;
   type Init_Access_Array is array (Natural range <>) of Init_Access;
   type Init_Access_Array_Access is access all Init_Access_Array;

   type Init is new InitInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out Init'Class);
   function Create return Init_Access;
   procedure init (This : in out Init);

end org.allbinary.init.Init_Package;


