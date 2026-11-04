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

limited with org.allbinary.logic.visual.theme.ThemePropertiesView_Package;
package org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References is
   type ThemePropertiesView_Access is access all org.allbinary.logic.visual.theme.ThemePropertiesView_Package.ThemePropertiesView'Class;
   type ThemePropertiesView_Access_Array is array (Natural range <>) of ThemePropertiesView_Access;
   type ThemePropertiesView_Access_Array_Access is access all ThemePropertiesView_Access_Array;
   type ThemePropertiesView_Access_Array_Access_Array is array (Natural range <>) of ThemePropertiesView_Access_Array_Access;
   type ThemePropertiesView_Access_Array_Access_Array_Access is access all ThemePropertiesView_Access_Array_Access_Array;
end org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References;

with org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.visual.theme.ThemeInterface_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package_References;

package org.allbinary.logic.visual.theme.ThemePropertiesView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype ThemeInterface_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access;
   use type ThemeInterface_Access;
   subtype ThemeInterface_Access_Array is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array;
   use type ThemeInterface_Access_Array;
   subtype ThemeInterface_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access;
   use type ThemeInterface_Access_Array_Access;
   subtype ThemeInterface_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access_Array;
   use type ThemeInterface_Access_Array_Access_Array;
   subtype ThemeInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemeInterface_Package_References.ThemeInterface_Access_Array_Access_Array_Access;
   use type ThemeInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ThemePropertiesView_Access is org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References.ThemePropertiesView_Access;
   function "=" (Left, Right : ThemePropertiesView_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References."=";
   subtype ThemePropertiesView_Access_Array is org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References.ThemePropertiesView_Access_Array;
   function "=" (Left, Right : ThemePropertiesView_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References."=";
   subtype ThemePropertiesView_Access_Array_Access is org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References.ThemePropertiesView_Access_Array_Access;
   function "=" (Left, Right : ThemePropertiesView_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References."=";
   subtype ThemePropertiesView_Access_Array_Access_Array is org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References.ThemePropertiesView_Access_Array_Access_Array;
   function "=" (Left, Right : ThemePropertiesView_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References."=";
   subtype ThemePropertiesView_Access_Array_Access_Array_Access is org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References.ThemePropertiesView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThemePropertiesView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.theme.ThemePropertiesView_Package_References."=";

   type ThemePropertiesView is new Java_Object and DomNodeInterface with record
      themeInterface : ThemeInterface_Access;
   end record;

   procedure Initialize (This : in out ThemePropertiesView'Class; themeInterface_Param : access ThemeInterface_Package.ThemeInterface'Class);
   function Create (themeInterface_Param : access ThemeInterface_Package.ThemeInterface'Class) return ThemePropertiesView_Access;
   function toXmlNode (This : in out ThemePropertiesView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ThemePropertiesView; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.theme.ThemePropertiesView_Package;


