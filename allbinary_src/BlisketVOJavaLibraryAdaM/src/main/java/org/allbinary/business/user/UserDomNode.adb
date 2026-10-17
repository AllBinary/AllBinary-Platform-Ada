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


package body org.allbinary.business.user.UserDomNode_Package is

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
        hashMap.put (EntryData_Package.getInstance.LASTMODIFIED, EMPTY_STRING);
        hashMap.put (EntryData_Package.getInstance.ENCRYPTION, EMPTY_STRING);
        hashMap.put (UserData_Package.PASSWORD, EMPTY_STRING);
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
      Java_Result : constant Node_Access := UserDomNode'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.UserDomNode_Package;


