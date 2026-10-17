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
--  with javax.servlet.jsp.tagext.Tag_Package; use javax.servlet.jsp.tagext.Tag_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package admin.tags.ParentInventoryTagHelper_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type ParentInventoryTagHelper is tagged;
   type ParentInventoryTagHelper_Access is access all ParentInventoryTagHelper'Class;
   type ParentInventoryTagHelper_Access_Array is array (Natural range <>) of ParentInventoryTagHelper_Access;
   type ParentInventoryTagHelper_Access_Array_Access is access all ParentInventoryTagHelper_Access_Array;

   type ParentInventoryTagHelper is new Java_Object with null record;
   instance : ParentInventoryTagHelper_Access;

   procedure Initialize (This : in out ParentInventoryTagHelper'Class);
   function Create return ParentInventoryTagHelper_Access;
   function getInstance return ParentInventoryTagHelper_Access;
   procedure isValid (This : in out ParentInventoryTagHelper; tagClass_Param : access Java_Object'Class; parentTag_Param : access Tag_Package.Tag'Class);

end admin.tags.ParentInventoryTagHelper_Package;


