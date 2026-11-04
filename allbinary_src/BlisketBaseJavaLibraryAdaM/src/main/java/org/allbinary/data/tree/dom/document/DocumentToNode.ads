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

limited with org.allbinary.data.tree.dom.document.DocumentToNode_Package;
package org.allbinary.data.tree.dom.document.DocumentToNode_Package_References is
   type DocumentToNode_Access is access all org.allbinary.data.tree.dom.document.DocumentToNode_Package.DocumentToNode'Class;
   type DocumentToNode_Access_Array is array (Natural range <>) of DocumentToNode_Access;
   type DocumentToNode_Access_Array_Access is access all DocumentToNode_Access_Array;
   type DocumentToNode_Access_Array_Access_Array is array (Natural range <>) of DocumentToNode_Access_Array_Access;
   type DocumentToNode_Access_Array_Access_Array_Access is access all DocumentToNode_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.document.DocumentToNode_Package_References;

with org.allbinary.data.tree.dom.document.DocumentToNode_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.data.tree.dom.document.DocumentToNode_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DocumentToNode_Access is org.allbinary.data.tree.dom.document.DocumentToNode_Package_References.DocumentToNode_Access;
   function "=" (Left, Right : DocumentToNode_Access) return Boolean renames org.allbinary.data.tree.dom.document.DocumentToNode_Package_References."=";
   subtype DocumentToNode_Access_Array is org.allbinary.data.tree.dom.document.DocumentToNode_Package_References.DocumentToNode_Access_Array;
   function "=" (Left, Right : DocumentToNode_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DocumentToNode_Package_References."=";
   subtype DocumentToNode_Access_Array_Access is org.allbinary.data.tree.dom.document.DocumentToNode_Package_References.DocumentToNode_Access_Array_Access;
   function "=" (Left, Right : DocumentToNode_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DocumentToNode_Package_References."=";
   subtype DocumentToNode_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.DocumentToNode_Package_References.DocumentToNode_Access_Array_Access_Array;
   function "=" (Left, Right : DocumentToNode_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DocumentToNode_Package_References."=";
   subtype DocumentToNode_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.DocumentToNode_Package_References.DocumentToNode_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DocumentToNode_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DocumentToNode_Package_References."=";

   type DocumentToNode is new Java_Object with null record;
   XMLROOT : Unbounded_String;
   XMLROOTSTART : Unbounded_String;
   XMLROOTEND : Unbounded_String;
   XMLJSPROOTSTART : Unbounded_String;
   XMLEND : Unbounded_String;
   XMLJSPROOTENDSTART : Unbounded_String;

   procedure Initialize (This : in out DocumentToNode'Class);
   function Create return DocumentToNode_Access;
   function convertDocumentToNodeString (documentString_Param : Unbounded_String) return Unbounded_String;
   procedure convertDocumentToNodeString (documentString_Param : Unbounded_String);
   function removeXmlDefinitionFromDocumentString (documentString : Unbounded_String) return Unbounded_String;
   procedure removeXmlDefinitionFromDocumentString (documentString : Unbounded_String);
   function remove (documentString : Unbounded_String; start : Unbounded_String; end_Id : Unbounded_String) return Unbounded_String;
   procedure remove (documentString : Unbounded_String; start : Unbounded_String; end_Id : Unbounded_String);

end org.allbinary.data.tree.dom.document.DocumentToNode_Package;


