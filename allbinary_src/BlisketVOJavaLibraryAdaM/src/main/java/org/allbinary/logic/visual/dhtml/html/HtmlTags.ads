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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.logic.visual.dhtml.html.HtmlTags_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;

   type HtmlTags is tagged;
   type HtmlTags_Access is access all HtmlTags'Class;
   type HtmlTags_Access_Array is array (Natural range <>) of HtmlTags_Access;
   type HtmlTags_Access_Array_Access is access all HtmlTags_Access_Array;

   type HtmlTags is new Java_Object with record
      htmlTagVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out HtmlTags'Class);
   function Create return HtmlTags_Access;
   function get (This : in out HtmlTags; index : Integer) return HtmlTag_Access;
   procedure get (This : in out HtmlTags; index : Integer);
   procedure add (This : in out HtmlTags; htmlTag : HtmlTag_Access);
   function size (This : in out HtmlTags) return Integer;
   procedure size (This : in out HtmlTags);

end org.allbinary.logic.visual.dhtml.html.HtmlTags_Package;


