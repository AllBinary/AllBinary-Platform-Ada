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
with org.allbinary.logic.visual.dhtml.html.HtmlForm_Package; use org.allbinary.logic.visual.dhtml.html.HtmlForm_Package;

package org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package is


   type HtmlPostForm is tagged;
   type HtmlPostForm_Access is access all HtmlPostForm'Class;
   type HtmlPostForm_Access_Array is array (Natural range <>) of HtmlPostForm_Access;
   type HtmlPostForm_Access_Array_Access is access all HtmlPostForm_Access_Array;
   type HtmlPostForm_Access_Array_Access_Array is array (Natural range <>) of HtmlPostForm_Access_Array_Access;
   type HtmlPostForm_Access_Array_Access_Array_Access is access all HtmlPostForm_Access_Array_Access_Array;

   type HtmlPostForm is new HtmlForm with null record;

   procedure Initialize (This : in out HtmlPostForm'Class; action : Unbounded_String);
   function Create (action : Unbounded_String) return HtmlPostForm_Access;

end org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package;


