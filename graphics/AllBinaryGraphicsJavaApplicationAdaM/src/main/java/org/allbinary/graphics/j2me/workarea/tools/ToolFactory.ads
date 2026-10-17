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
with org.allbinary.graphics.j2me.StatusFactory_Package; use org.allbinary.graphics.j2me.StatusFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;

package org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package is

   package StatusFactory_Package renames Standard.org.allbinary.graphics.j2me.StatusFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ToolFactory is tagged;
   type ToolFactory_Access is access all ToolFactory'Class;
   type ToolFactory_Access_Array is array (Natural range <>) of ToolFactory_Access;
   type ToolFactory_Access_Array_Access is access all ToolFactory_Access_Array;

   type ToolFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      selectedTool : GraphicsItemInterfaceFactoryInterface_Access;
      tool : Unbounded_String;
      SELECTED_LABEL : Unbounded_String;
   end record;
   instance : ToolFactory_Access;

   procedure Initialize (This : in out ToolFactory'Class);
   function Create return ToolFactory_Access;
   function getInstance return ToolFactory_Access;
   procedure setSelectedTool (This : in out ToolFactory; tool : Unbounded_String);
   function getSelectedToolFactory (This : in out ToolFactory) return GraphicsItemInterfaceFactoryInterface_Access;

end org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package;


