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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;

package body org.allbinary.business.user.UserDomNode_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype TableMappingInterface_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access;
   function "=" (Left, Right : TableMappingInterface_Access) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array;
   function "=" (Left, Right : TableMappingInterface_Access_Array) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access;
   function "=" (Left, Right : TableMappingInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array_Access_Array is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TableMappingInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype TableMappingInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.TableMappingInterface_Package_References.TableMappingInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TableMappingInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.TableMappingInterface_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   procedure Initialize_Fields (This : in out UserDomNode'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserDomNode'Class; dataMappingInterface_Param : access TableMappingInterface_Package.TableMappingInterface'Class) is
      dataMappingInterface : constant TableMappingInterface_Access := TableMappingInterface_Access (dataMappingInterface_Param);
   begin
      Initialize_Fields (This);
        This.dataMappingInterface := dataMappingInterface;
   end Initialize;

   function Create (dataMappingInterface_Param : access TableMappingInterface_Package.TableMappingInterface'Class) return UserDomNode_Access is
      This : constant UserDomNode_Access := new UserDomNode;
   begin
      UserDomNode_Package.Initialize (This.all, dataMappingInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out UserDomNode; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      EMPTY_STRING : Unbounded_String;
      hashMap : HashMap_Access;
   begin
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        hashMap := This.dataMappingInterface.toHashMap;
        hashMap.put (EntryData_Package.getInstance.LASTMODIFIED, Java_Box (EMPTY_STRING));
        hashMap.put (EntryData_Package.getInstance.ENCRYPTION, Java_Box (EMPTY_STRING));
        hashMap.put (UserData_Package.PASSWORD, Java_Box (EMPTY_STRING));
        return ModDomHelper_Package.createNameValueNodes (document, UserData_Package.NAME, hashMap);
   end toXmlNode;

   --  throws Exception
   function toXmlDoc (This : in out UserDomNode) return Document_Access is
   begin
        return null;
   end toXmlDoc;

   --  throws Exception
   function view (This : in out UserDomNode) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end view;

   procedure toXmlNode (This : in out UserDomNode; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserDomNode'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.UserDomNode_Package;


