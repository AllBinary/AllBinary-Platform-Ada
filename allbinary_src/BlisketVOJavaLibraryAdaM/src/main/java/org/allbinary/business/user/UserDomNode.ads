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

limited with org.allbinary.business.user.UserDomNode_Package;
package org.allbinary.business.user.UserDomNode_Package_References is
   type UserDomNode_Access is access all org.allbinary.business.user.UserDomNode_Package.UserDomNode'Class;
   type UserDomNode_Access_Array is array (Natural range <>) of UserDomNode_Access;
   type UserDomNode_Access_Array_Access is access all UserDomNode_Access_Array;
   type UserDomNode_Access_Array_Access_Array is array (Natural range <>) of UserDomNode_Access_Array_Access;
   type UserDomNode_Access_Array_Access_Array_Access is access all UserDomNode_Access_Array_Access_Array;
end org.allbinary.business.user.UserDomNode_Package_References;

with org.allbinary.business.user.UserDomNode_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.data.tables.TableMappingInterface_Package_References;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.business.user.UserDomNode_Package is

   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype TableMappingInterface_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access;
   use type TableMappingInterface_Access;
   subtype TableMappingInterface_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array;
   use type TableMappingInterface_Access_Array;
   subtype TableMappingInterface_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access;
   use type TableMappingInterface_Access_Array_Access;
   subtype TableMappingInterface_Access_Array_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array;
   use type TableMappingInterface_Access_Array_Access_Array;
   subtype TableMappingInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array_Access;
   use type TableMappingInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype UserDomNode_Access is org.allbinary.business.user.UserDomNode_Package_References.UserDomNode_Access;
   function "=" (Left, Right : UserDomNode_Access) return Boolean renames org.allbinary.business.user.UserDomNode_Package_References."=";
   subtype UserDomNode_Access_Array is org.allbinary.business.user.UserDomNode_Package_References.UserDomNode_Access_Array;
   function "=" (Left, Right : UserDomNode_Access_Array) return Boolean renames org.allbinary.business.user.UserDomNode_Package_References."=";
   subtype UserDomNode_Access_Array_Access is org.allbinary.business.user.UserDomNode_Package_References.UserDomNode_Access_Array_Access;
   function "=" (Left, Right : UserDomNode_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserDomNode_Package_References."=";
   subtype UserDomNode_Access_Array_Access_Array is org.allbinary.business.user.UserDomNode_Package_References.UserDomNode_Access_Array_Access_Array;
   function "=" (Left, Right : UserDomNode_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.UserDomNode_Package_References."=";
   subtype UserDomNode_Access_Array_Access_Array_Access is org.allbinary.business.user.UserDomNode_Package_References.UserDomNode_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserDomNode_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserDomNode_Package_References."=";

   type UserDomNode is new Java_Object and DomNodeInterface with record
      dataMappingInterface : TableMappingInterface_Access;
   end record;

   procedure Initialize (This : in out UserDomNode'Class; dataMappingInterface_Param : access TableMappingInterface_Package.TableMappingInterface'Class);
   function Create (dataMappingInterface_Param : access TableMappingInterface_Package.TableMappingInterface'Class) return UserDomNode_Access;
   function toXmlNode (This : in out UserDomNode; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserDomNode; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out UserDomNode) return Document_Access;
   function view (This : in out UserDomNode) return Unbounded_String;

end org.allbinary.business.user.UserDomNode_Package;


