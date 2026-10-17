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
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package is

   package Node_Package renames org.w3c.dom.Node_Package;

   type GraphicItemBuilder is tagged;
   type GraphicItemBuilder_Access is access all GraphicItemBuilder'Class;
   type GraphicItemBuilder_Access_Array is array (Natural range <>) of GraphicItemBuilder_Access;
   type GraphicItemBuilder_Access_Array_Access is access all GraphicItemBuilder_Access_Array;

   type GraphicItemBuilder is new Java_Object with null record;

   procedure Initialize (This : in out GraphicItemBuilder'Class);
   function Create return GraphicItemBuilder_Access;
   function getInstance (node : Node_Access) return GraphicItemInterface_Access;
   procedure getInstance (node : Node_Access);

end org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package;


