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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package is

   procedure Initialize_Fields (This : in out GenericProfile'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.name := Null_Unbounded_String;
      
      This.genericProfileActions := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfile'Class; node : Node_Access) is
      nodeList : NodeList_Access;
      profileNode : Node_Access;
      genericProfileDataWorkerType : GenericProfileDataWorkerType_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.setName (DomNodeHelper_Package.getTextNodeValue (node));
        This.vector := BasicArrayListD_Package.Create;
        nodeList := node.getChildNodes;
        This.logUtil.putF (To_Unbounded_String ("Name: ") & This.getName & To_Unbounded_String (" Child Nodes: ") & Java_Image (nodeList.getLength), This'Unchecked_Access, To_Unbounded_String ("Contructor"));
        for index in 0 .. (nodeList.getLength) - 1 loop
            profileNode := nodeList.item (index);
            if (profileNode.getNodeName.compareTo (GenericProfileDataWorkerData_Package.NAME)) = (0) then
                genericProfileDataWorkerType := GenericProfileDataWorkerType_Package.getInstance (profileNode);
                This.logUtil.putF (To_Unbounded_String ("Adding GenericProfileDataWorkerType: ") & genericProfileDataWorkerType.toString, This'Unchecked_Access, To_Unbounded_String ("Contructor"));
                This.vector.add (genericProfileDataWorkerType);
            end if;
        end loop;
   end Initialize;

   function Create (node : Node_Access) return GenericProfile_Access is
      This : constant GenericProfile_Access := new GenericProfile;
   begin
      GenericProfile_Package.Initialize (This.all, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out GenericProfile'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        This.vector := BasicArrayListD_Package.Create;
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

   procedure add (This : in out GenericProfile; genericProfileDataWorkerType : GenericProfileDataWorkerType_Access) is
   begin
        if not (This.vector.contains (genericProfileDataWorkerType)) then
            This.vector.add (genericProfileDataWorkerType);
        end if;
   end add;

   procedure remove (This : in out GenericProfile; genericProfileDataWorkerType : GenericProfileDataWorkerType_Access) is
   begin
        This.vector.remove (genericProfileDataWorkerType);
   end remove;

   --  throws Exception
   function toXmlNode (This : in out GenericProfile; document : Document_Access) return Node_Access is
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

   procedure setGenericProfileActions (This : in out GenericProfile; genericProfileActions : GenericProfileActions_Access) is
   begin
        This.genericProfileActions := genericProfileActions;
   end setGenericProfileActions;

   procedure toXmlNode (This : in out GenericProfile; document : Document_Access) is
      Java_Result : constant Node_Access := GenericProfile'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;


