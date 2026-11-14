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
limited with org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package;
package org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References is
   type ToolFactory_Access is access all org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package.ToolFactory'Class;
   type ToolFactory_Access_Array is array (Natural range <>) of ToolFactory_Access;
   type ToolFactory_Access_Array_Access is access all ToolFactory_Access_Array;
   type ToolFactory_Access_Array_Access_Array is array (Natural range <>) of ToolFactory_Access_Array_Access;
   type ToolFactory_Access_Array_Access_Array_Access is access all ToolFactory_Access_Array_Access_Array;
   type ToolFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToolFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ToolFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToolFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToolFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToolFactory_Access_Array_Access is (if Value /= null and then Value.all in ToolFactory_Access_Array_Object'Class then ToolFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ToolFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ToolFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ToolFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ToolFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ToolFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ToolFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ToolFactory_Access_Array_Access_Array_Object'Class then ToolFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype GraphicsItemInterfaceFactoryInterface_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access;
   use type GraphicsItemInterfaceFactoryInterface_Access;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array_Access;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ToolFactory_Access is org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.ToolFactory_Access;
   function "=" (Left, Right : ToolFactory_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References."=";
   subtype ToolFactory_Access_Array is org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.ToolFactory_Access_Array;
   function "=" (Left, Right : ToolFactory_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References."=";
   subtype ToolFactory_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.ToolFactory_Access_Array_Access;
   function "=" (Left, Right : ToolFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References."=";
   function Java_Box (Value : ToolFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.Java_Box;
   function Java_Unbox_ToolFactory_Access_Array (Value : access Java_Object'Class) return ToolFactory_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.Java_Unbox_ToolFactory_Access_Array;
   subtype ToolFactory_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.ToolFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ToolFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References."=";
   subtype ToolFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.ToolFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ToolFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References."=";
   function Java_Box (Value : ToolFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.Java_Box;
   function Java_Unbox_ToolFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ToolFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package_References.Java_Unbox_ToolFactory_Access_Array_Access_Array;

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


