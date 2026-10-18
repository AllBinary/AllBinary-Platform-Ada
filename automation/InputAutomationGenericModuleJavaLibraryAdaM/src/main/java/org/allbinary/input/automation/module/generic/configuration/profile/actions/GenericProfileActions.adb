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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package is

   procedure Initialize_Fields (This : in out GenericProfileActions'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonFileStrings := CommonDataFileStrings_Package.getInstance;
      This.name := Null_Unbounded_String;
      This.genericProfileActionsJPanel := null;
      This.actionsDefaultListModelHelper := null;
      This.hashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; name : Unbounded_String) is
      genericProfileActionsJPanel : constant GenericProfileActionsJPanel_Access := GenericProfileActionsJPanel_Access (genericProfileActionsJPanel_Param);
   begin
      Initialize_Fields (This);
        GenericProfileActions'Class (This).setName (name);
        GenericProfileActions'Class (This).init (genericProfileActionsJPanel);
        GenericProfileActions'Class (This).load;
   end Initialize;

   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; name : Unbounded_String) return GenericProfileActions_Access is
      This : constant GenericProfileActions_Access := new GenericProfileActions;
   begin
      GenericProfileActions_Package.Initialize (This.all, genericProfileActionsJPanel_Param, name);
      return This;
   end Create;

   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; abPath_Param : access AbPath_Package.AbPath'Class; name : Unbounded_String) is
      genericProfileActionsJPanel : constant GenericProfileActionsJPanel_Access := GenericProfileActionsJPanel_Access (genericProfileActionsJPanel_Param);
      abPath : constant AbPath_Access := AbPath_Access (abPath_Param);
   begin
      Initialize_Fields (This);
        GenericProfileActions'Class (This).setName (name);
        GenericProfileActions'Class (This).init (genericProfileActionsJPanel);
        GenericProfileActions'Class (This).load;
   end Initialize;

   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; abPath_Param : access AbPath_Package.AbPath'Class; name : Unbounded_String) return GenericProfileActions_Access is
      This : constant GenericProfileActions_Access := new GenericProfileActions;
   begin
      GenericProfileActions_Package.Initialize (This.all, genericProfileActionsJPanel_Param, abPath_Param, name);
      return This;
   end Create;

   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class; name : Unbounded_String) is
      genericProfileActionsJPanel : constant GenericProfileActionsJPanel_Access := GenericProfileActionsJPanel_Access (genericProfileActionsJPanel_Param);
      fileInputStream : constant FileInputStream_Access := FileInputStream_Access (fileInputStream_Param);
   begin
      Initialize_Fields (This);
        GenericProfileActions'Class (This).setName (name);
        GenericProfileActions'Class (This).init (genericProfileActionsJPanel);
        GenericProfileActions'Class (This).fileInit (fileInputStream);
   end Initialize;

   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class; name : Unbounded_String) return GenericProfileActions_Access is
      This : constant GenericProfileActions_Access := new GenericProfileActions;
   begin
      GenericProfileActions_Package.Initialize (This.all, genericProfileActionsJPanel_Param, fileInputStream_Param, name);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out GenericProfileActions; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class) is
      genericProfileActionsJPanel : constant GenericProfileActionsJPanel_Access := GenericProfileActionsJPanel_Access (genericProfileActionsJPanel_Param);
   begin
        GenericProfileActions'Class (This).setGenericProfileActionsJPanel (genericProfileActionsJPanel);
        This.actionsDefaultListModelHelper := DefaultListModelHelper_Package.Create;
        GenericProfileActions'Class (This).setHashMap (HashMap_Package.Create);
   end init;

   --  throws Exception
   procedure save (This : in out GenericProfileActions) is
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
   begin
        idFile := FileOutputStream_Package.Create (Java_Image (GenericProfileActions_Package.DEFAULT_PROFILE_ACTIONS_PATH) & GenericProfileActions'Class (This).getName & Java_Image (This.commonFileStrings.U_XML));
        idOutData := DataOutputStream_Package.Create (idFile);
        idOutData.writeBytes (XmlDocumentHelper_Package.toString (GenericProfileActions'Class (This).toXmlDoc));
   end save;

   function getFile (This : in out GenericProfileActions; name : Unbounded_String) return File_Access is
      fileName : Unbounded_String;
   begin
        fileName := DEFAULT_PROFILE_ACTIONS_PATH & name & Java_Image (This.commonFileStrings.U_XML);
        return File_Package.Create (fileName);
   end getFile;

   --  throws Exception
   procedure load (This : in out GenericProfileActions) is
      file : File_Access;
      idFile : FileInputStream_Access;
   begin
        file := GenericProfileActions'Class (This).getFile (GenericProfileActions'Class (This).getName);
        if file.isFile then
            idFile := FileInputStream_Package.Create (file);
            GenericProfileActions'Class (This).fileInit (idFile);
        else
            This.logUtil.putF (To_Unbounded_String ("No Profile: ") & Java_Image (file.getAbsolutePath), GenericProfileActions_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        end if;
   end load;

   --  throws Exception
   procedure fileInit (This : in out GenericProfileActions; fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class) is
      fileInputStream : constant FileInputStream_Access := FileInputStream_Access (fileInputStream_Param);
      bytes : Short_Short_Integer_Array_Access;
      length : Integer;
      data : Unbounded_String;
      endIndex : Integer;
      document : Document_Access;
      nameNodeList : NodeList_Access;
      node : Node_Access;
      nodeList : NodeList_Access;
      index : Integer;
   begin
        bytes := new Short_Short_Integer_Array'(0 .. (100000) - 1 => 0);
        length := fileInputStream.read (bytes);
        data := Java_New_String (bytes);
        endIndex := data.lastIndexOf ('>');
        document := DomDocumentHelper_Package.create (Unbounded_Slice (data, (0) + 1, (endIndex) + (1)));
        nameNodeList := document.getElementsByTagName (GenericProfileActionsData_Package.NAME);
        This.logUtil.putF (To_Unbounded_String ("Number Of Profiles Specified: ") & Java_Image (nameNodeList.getLength), GenericProfileActions_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        for index in 0 .. (nameNodeList.getLength) - 1 loop
            node := nameNodeList.item (index);
            nodeList := node.getChildNodes;
            if (nodeList) /= (null) then
                GenericProfileActions'Class (This).initActions (nodeList);
            else
                Java_Throw (Java_New_Exception ("Exception", Java_Image (GenericProfileActionData_Package.NAME) & To_Unbounded_String (" Name Node Node Children")));
            end if;
        end loop;
        This.logUtil.putF (To_Unbounded_String ("Loaded: ") & Java_Image (GenericProfileActions'Class (This).getHashMap.size) & To_Unbounded_String (" Configuration Profile Action(s)"), GenericProfileActions_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        GenericProfileActions'Class (This).getDefaultListModelHelper.initDefaultModelList;
   end fileInit;

   --  throws Exception
   procedure initActions (This : in out GenericProfileActions; nodeList_Param : access NodeList_Package.NodeList'Class) is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      actionNode : Node_Access;
      genericConfigurationProfileAction : GenericProfileAction_Access;
      index : Integer;
   begin
        for index in 0 .. (nodeList.getLength) - 1 loop
            actionNode := nodeList.item (index);
            if (actionNode) /= (null) then
                genericConfigurationProfileAction := GenericProfileAction_Package.Create (GenericProfileActions'Class (This).getGenericProfileActionsJPanel.getGenericProfileActionJPanel, actionNode);
                GenericProfileActions'Class (This).getHashMap.put (genericConfigurationProfileAction.getName, genericConfigurationProfileAction);
                GenericProfileActions'Class (This).getDefaultListModelHelper.add (genericConfigurationProfileAction.getName);
            else
                Java_Throw (Java_New_Exception ("Exception", Java_Image (GenericProfileActionData_Package.NAME) & To_Unbounded_String (" Node Null")));
            end if;
        end loop;
   end initActions;

   function getDefaultListModelHelper (This : in out GenericProfileActions) return DefaultListModelHelper_Access is
   begin
        return This.actionsDefaultListModelHelper;
   end getDefaultListModelHelper;

   function getAction (This : in out GenericProfileActions; string_Id : Unbounded_String) return GenericProfileAction_Access is
   begin
        return GenericProfileAction_Access (GenericProfileActions'Class (This).getHashMap.get (string_Id));
   end getAction;

   --  throws Exception
   procedure add (This : in out GenericProfileActions; name : Unbounded_String) is
      genericProfileAction : GenericProfileAction_Access;
   begin
        genericProfileAction := GenericProfileAction_Package.Create (name);
        GenericProfileActions'Class (This).getHashMap.put (genericProfileAction.getName, genericProfileAction);
        GenericProfileActions'Class (This).getDefaultListModelHelper.add (genericProfileAction.getName);
        GenericProfileActions'Class (This).getDefaultListModelHelper.initDefaultModelList;
        GenericProfileActions'Class (This).save;
   end add;

   --  throws Exception
   procedure remove (This : in out GenericProfileActions; name : Unbounded_String) is
   begin
        GenericProfileActions'Class (This).getHashMap.remove (name);
        GenericProfileActions'Class (This).getDefaultListModelHelper.remove (name);
        GenericProfileActions'Class (This).getDefaultListModelHelper.initDefaultModelList;
        GenericProfileActions'Class (This).save;
   end remove;

   function toHashMap (This : in out GenericProfileActions) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, GenericProfileActions_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out GenericProfileActions; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      set : Set_Access;
      actionNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      nextActionName : Unbounded_String;
      nextGenericProfileAction : GenericProfileAction_Access;
      index : Integer;
   begin
        node := document.createElement (GenericProfileActionsData_Package.NAME);
        set := GenericProfileActions'Class (This).getHashMap.keySet;
        actionNameArray := set.toArray;
        size := actionNameArray'Length;
        for index in 0 .. (size) - 1 loop
            nextActionName := Java_Unbox (actionNameArray (index));
            nextGenericProfileAction := GenericProfileAction_Access (GenericProfileActions'Class (This).getAction (nextActionName));
            node.appendChild (nextGenericProfileAction.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   --  throws Exception
   function toXmlDoc (This : in out GenericProfileActions) return Document_Access is
      document : Document_Access;
      node : Node_Access;
   begin
        document := DomDocumentHelper_Package.create;
        node := GenericProfileActions'Class (This).toXmlNode (document);
        document.appendChild (node);
        return document;
   end toXmlDoc;

   function getGenericProfileActionsJPanel (This : in out GenericProfileActions) return GenericProfileActionsJPanel_Access is
   begin
        return This.genericProfileActionsJPanel;
   end getGenericProfileActionsJPanel;

   procedure setGenericProfileActionsJPanel (This : in out GenericProfileActions; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class) is
      genericProfileActionsJPanel : constant GenericProfileActionsJPanel_Access := GenericProfileActionsJPanel_Access (genericProfileActionsJPanel_Param);
   begin
        This.genericProfileActionsJPanel := genericProfileActionsJPanel;
   end setGenericProfileActionsJPanel;

   function getHashMap (This : in out GenericProfileActions) return HashMap_Access is
   begin
        return This.hashMap;
   end getHashMap;

   procedure setHashMap (This : in out GenericProfileActions; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.hashMap := hashMap;
   end setHashMap;

   function getName (This : in out GenericProfileActions) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out GenericProfileActions; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   procedure getFile (This : in out GenericProfileActions; name : Unbounded_String) is
      Java_Result : constant File_Access := GenericProfileActions'Class (This).getFile (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFile;

   procedure getAction (This : in out GenericProfileActions; string_Id : Unbounded_String) is
      Java_Result : constant GenericProfileAction_Access := GenericProfileActions'Class (This).getAction (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAction;

   procedure toXmlNode (This : in out GenericProfileActions; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericProfileActions'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   DEFAULT_PROFILE_ACTIONS_PATH := Java_Image (GenericProfiles_Package.DEFAULT_PROFILES_PATH) & To_Unbounded_String ("actions/");

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;


