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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileData_Package;

package body org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out GenericProfile'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.name := Null_Unbounded_String;
      
      This.genericProfileActions := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfile'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      nodeList : NodeList_Access;
      profileNode : Node_Access;
      genericProfileDataWorkerType : GenericProfileDataWorkerType_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        GenericProfile'Class (This).setName (DomNodeHelper_Package.getTextNodeValue (node));
        This.vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        nodeList := node.getChildNodes;
        This.logUtil.putF (To_Unbounded_String ("Name: ") & GenericProfile'Class (This).getName & To_Unbounded_String (" Child Nodes: ") & Java_Image (nodeList.getLength), GenericProfile_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        for index in 0 .. (nodeList.getLength) - 1 loop
            profileNode := nodeList.item (index);
            if (profileNode.getNodeName.compareTo (GenericProfileDataWorkerData_Package.NAME)) = (0) then
                genericProfileDataWorkerType := GenericProfileDataWorkerType_Package.getInstance (profileNode);
                This.logUtil.putF (To_Unbounded_String ("Adding GenericProfileDataWorkerType: ") & genericProfileDataWorkerType.toString, GenericProfile_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
                This.vector.add (Java_Object_Access (genericProfileDataWorkerType));
            end if;
        end loop;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return GenericProfile_Access is
      This : constant GenericProfile_Access := new GenericProfile;
   begin
      GenericProfile_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out GenericProfile'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        GenericProfile'Class (This).setName (name);
        This.vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (name : Unbounded_String) return GenericProfile_Access is
      This : constant GenericProfile_Access := new GenericProfile;
   begin
      GenericProfile_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getGenericProfileDataWorkerTypeVector (This : in out GenericProfile) return BasicArrayList_Access is
   begin
        return This.vector;
   end getGenericProfileDataWorkerTypeVector;

   procedure add (This : in out GenericProfile; genericProfileDataWorkerType_Param : access GenericProfileDataWorkerType_Package.GenericProfileDataWorkerType'Class) is
      genericProfileDataWorkerType : constant GenericProfileDataWorkerType_Access := GenericProfileDataWorkerType_Access (genericProfileDataWorkerType_Param);
   begin
        if not (This.vector.contains (Java_Object_Access (genericProfileDataWorkerType))) then
            This.vector.add (Java_Object_Access (genericProfileDataWorkerType));
        end if;
   end add;

   procedure remove (This : in out GenericProfile; genericProfileDataWorkerType_Param : access GenericProfileDataWorkerType_Package.GenericProfileDataWorkerType'Class) is
      genericProfileDataWorkerType : constant GenericProfileDataWorkerType_Access := GenericProfileDataWorkerType_Access (genericProfileDataWorkerType_Param);
   begin
        This.vector.remove (Java_Object_Access (genericProfileDataWorkerType));
   end remove;

   --  throws Exception
   function toXmlNode (This : in out GenericProfile; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      size : Integer;
      genericProfileDataWorkerType : GenericProfileDataWorkerType_Access;
      index : Integer;
   begin
        node := ModDomHelper_Package.createTextNode (document, GenericProfileData_Package.NAME, This.name);
        size := This.vector.size;
        for index in 0 .. (size) - 1 loop
            genericProfileDataWorkerType := GenericProfileDataWorkerType_Access (This.vector.get (index));
            node.appendChild (genericProfileDataWorkerType.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   function getName (This : in out GenericProfile) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out GenericProfile; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getGenericProfileActions (This : in out GenericProfile) return GenericProfileActions_Access is
   begin
        return This.genericProfileActions;
   end getGenericProfileActions;

   procedure setGenericProfileActions (This : in out GenericProfile; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class) is
      genericProfileActions : constant GenericProfileActions_Access := GenericProfileActions_Access (genericProfileActions_Param);
   begin
        This.genericProfileActions := genericProfileActions;
   end setGenericProfileActions;

   procedure toXmlNode (This : in out GenericProfile; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericProfile'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;


