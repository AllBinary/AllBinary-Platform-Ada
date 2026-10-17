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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package is

   procedure Initialize_Fields (This : in out GenericProfiles'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfiles'Class; fileName : Unbounded_String) is
      bytes : Short_Short_Integer_Array_Access;
      idFile : FileInputStream_Access;
      length : Integer;
      data : Unbounded_String;
      endIndex : Integer;
      document : Document_Access;
      nodeList : NodeList_Access;
   begin
      Initialize_Fields (This);
        This.fileName := fileName;
        This.profilesDefaultListModelHelper := DefaultListModelHelper_Package.Create;
        This.hashMap := StdUtil_Package.getInstance.createHashMap;
        if File_Package.Create (fileName).isFile then
            bytes := new Short_Short_Integer_Array'(0 .. (100000) - 1 => 0);
            idFile := FileInputStream_Package.Create (fileName);
            length := idFile.read (bytes);
            data := Java_New_String (bytes);
            endIndex := data.lastIndexOf ('>');
            document := DomDocumentHelper_Package.create (Unbounded_Slice (data, (0) + 1, (endIndex) + (1)));
            nodeList := document.getElementsByTagName (GenericProfilesData_Package.NAME);
            This.logUtil.putF (To_Unbounded_String ("Number Of Profiles Specified: ") & Java_Image (nodeList.getLength), GenericProfiles_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
            if (nodeList) /= (null) then
                This.initProfiles (nodeList.item (0));
            else
                Java_Throw (Java_New_Exception ("Exception", Java_Image (GenericProfileActionData_Package.NAME) & To_Unbounded_String (" Name Node Node Children")));
            end if;
            This.logUtil.putF (To_Unbounded_String ("Loaded: ") & Java_Image (This.hashMap.size) & To_Unbounded_String (" Configuration Profile Actions"), GenericProfiles_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        else
            This.logUtil.putF (To_Unbounded_String ("No Generic Profile: ") & fileName, GenericProfiles_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        end if;
        This.getDefaultListModelHelper.initDefaultModelList;
   end Initialize;

   function Create (fileName : Unbounded_String) return GenericProfiles_Access is
      This : constant GenericProfiles_Access := new GenericProfiles;
   begin
      GenericProfiles_Package.Initialize (This.all, fileName);
      return This;
   end Create;

   --  throws Exception
   procedure initProfiles (This : in out GenericProfiles; node_Param : access Node'Class) is
      node : Node_Access := Node_Access (node_Param);
      nodeList : NodeList_Access;
      profileNameNode : Node_Access;
      genericProfile : GenericProfile_Access;
      index : Integer;
   begin
        nodeList := node.getChildNodes;
        for index in 0 .. (nodeList.getLength) - 1 loop
            profileNameNode := nodeList.item (index);
            if (profileNameNode.getNodeName.compareTo (GenericProfileData_Package.NAME)) = (0) then
                genericProfile := GenericProfile_Package.Create (profileNameNode);
                This.hashMap.put (genericProfile.getName, genericProfile);
                This.getDefaultListModelHelper.add (genericProfile.getName);
            end if;
        end loop;
   end initProfiles;

   function getDefaultListModelHelper (This : in out GenericProfiles) return DefaultListModelHelper_Access is
   begin
        return This.profilesDefaultListModelHelper;
   end getDefaultListModelHelper;

   --  throws Exception
   function get (This : in out GenericProfiles; name : Unbounded_String) return GenericProfile_Access is
      genericProfile : GenericProfile_Access;
      commonStrings : CommonStrings_Access;
   begin
        genericProfile := GenericProfile_Access (This.hashMap.get (name));
        if (genericProfile) = (null) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (To_Unbounded_String ("No Generic Profile Named: ") & name & To_Unbounded_String (" availability was: ") & Java_Image (This.hashMap), GenericProfiles_Access'(This'Unchecked_Access), commonStrings.GET);
        end if;
        return genericProfile;
   end get;

   --  throws Exception
   procedure add (This : in out GenericProfiles; name : Unbounded_String) is
   begin
        This.hashMap.put (name, GenericProfile_Package.Create (name));
        This.getDefaultListModelHelper.add (name);
        This.getDefaultListModelHelper.initDefaultModelList;
        This.save;
   end add;

   --  throws Exception
   procedure remove (This : in out GenericProfiles; name : Unbounded_String) is
   begin
        This.hashMap.remove (name);
        This.getDefaultListModelHelper.remove (name);
        This.getDefaultListModelHelper.initDefaultModelList;
        This.save;
   end remove;

   --  throws Exception
   function toXmlNode (This : in out GenericProfiles; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      node : Node_Access;
      set : Set_Access;
      nameArray : Java_Object_Access_Array_Access;
      size : Integer;
      genericProfile : GenericProfile_Access;
      index : Integer;
   begin
        node := document.createElement (GenericProfilesData_Package.NAME);
        set := This.hashMap.keySet;
        nameArray := set.toArray;
        size := nameArray'Length;
        for index in 0 .. (size) - 1 loop
            genericProfile := GenericProfile_Access (This.hashMap.get (Unbounded_String (nameArray (index))));
            node.appendChild (genericProfile.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   --  throws Exception
   function toXmlDoc (This : in out GenericProfiles) return Document_Access is
      document : Document_Access;
      node : Node_Access;
   begin
        document := DomDocumentHelper_Package.create;
        node := This.toXmlNode (document);
        document.appendChild (node);
        return document;
   end toXmlDoc;

   --  throws Exception
   procedure save (This : in out GenericProfiles) is
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
      documentString : Unbounded_String;
   begin
        idFile := FileOutputStream_Package.Create (This.fileName);
        idOutData := DataOutputStream_Package.Create (idFile);
        documentString := XmlDocumentHelper_Package.toString (This.toXmlDoc);
        idOutData.writeBytes (documentString);
   end save;

   procedure get (This : in out GenericProfiles; name : Unbounded_String) is
      Java_Result : constant GenericProfile_Access := GenericProfiles'Class (This).get (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure toXmlNode (This : in out GenericProfiles; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := GenericProfiles'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   DEFAULT_PROFILES_PATH := To_Unbounded_String ("./modules/configs/profiles/");
   DEFAULT_PROFILE_ACTIONS_PATH := Java_Image (GenericProfiles_Package.DEFAULT_PROFILES_PATH) & To_Unbounded_String ("actions/");
   DEFAULT_FILE := Java_Image (GenericProfiles_Package.DEFAULT_PROFILES_PATH) & To_Unbounded_String ("profiles.xml");

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;


