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


   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        This.init (genericProfileActionsJPanel);
        This.load;
   end Initialize;

   function Create (genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; name : Unbounded_String) return GenericProfileActions_Access is
      This : constant GenericProfileActions_Access := new GenericProfileActions;
   begin
      Initialize (This.all, genericProfileActionsJPanel, name);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; abPath : AbPath_Access; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        This.init (genericProfileActionsJPanel);
        This.load;
   end Initialize;

   function Create (genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; abPath : AbPath_Access; name : Unbounded_String) return GenericProfileActions_Access is
      This : constant GenericProfileActions_Access := new GenericProfileActions;
   begin
      Initialize (This.all, genericProfileActionsJPanel, abPath, name);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; fileInputStream : FileInputStream_Access; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        This.init (genericProfileActionsJPanel);
        This.fileInit (fileInputStream);
   end Initialize;

   function Create (genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; fileInputStream : FileInputStream_Access; name : Unbounded_String) return GenericProfileActions_Access is
      This : constant GenericProfileActions_Access := new GenericProfileActions;
   begin
      Initialize (This.all, genericProfileActionsJPanel, fileInputStream, name);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out GenericProfileActions; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access) is
   begin
        This.setGenericProfileActionsJPanel (genericProfileActionsJPanel);
        This.actionsDefaultListModelHelper := DefaultListModelHelper_Package.Create;
        This.setHashMap (HashMap_Package.Create);
   end init;

   --  throws Exception
   procedure save (This : in out GenericProfileActions) is
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
   begin
        idFile := FileOutputStream_Package.Create (Java_Image (GenericProfileActions_Package.DEFAULT_PROFILE_ACTIONS_PATH) & This.getName & Java_Image (This.commonFileStrings.U_XML));
        idOutData := DataOutputStream_Package.Create (idFile);
        idOutData.writeBytes (XmlDocumentHelper_Package.toString (This.toXmlDoc));
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
        file := This.getFile (This.getName);
        if file.isFile then
            idFile := FileInputStream_Package.Create (file);
            This.fileInit (idFile);
        else
            This.logUtil.putF (To_Unbounded_String ("No Profile: ") & Java_Image (file.getAbsolutePath), This'Unchecked_Access, To_Unbounded_String ("Contructor"));
        end if;
   end load;

   --  throws Exception
   procedure fileInit (This : in out GenericProfileActions; fileInputStream : FileInputStream_Access) is
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
        This.logUtil.putF (To_Unbounded_String ("Number Of Profiles Specified: ") & Java_Image (nameNodeList.getLength), This'Unchecked_Access, To_Unbounded_String ("Contructor"));
        for index in 0 .. (nameNodeList.getLength) - 1 loop
            node := nameNodeList.item (index);
            nodeList := node.getChildNodes;
            if (nodeList) /= (null) then
                This.initActions (nodeList);
            else
                Java_Throw (Java_New_Exception ("Exception", Java_Image (GenericProfileActionData_Package.NAME) & To_Unbounded_String (" Name Node Node Children")));
            end if;
        end loop;
        This.logUtil.putF (To_Unbounded_String ("Loaded: ") & Java_Image (This.getHashMap.size) & To_Unbounded_String (" Configuration Profile Action(s)"), This'Unchecked_Access, To_Unbounded_String ("Contructor"));
        This.getDefaultListModelHelper.initDefaultModelList;
   end fileInit;

   --  throws Exception
   procedure initActions (This : in out GenericProfileActions; nodeList : NodeList_Access) is
      actionNode : Node_Access;
      genericConfigurationProfileAction : GenericProfileAction_Access;
      index : Integer;
   begin
        for index in 0 .. (nodeList.getLength) - 1 loop
            actionNode := nodeList.item (index);
            if (actionNode) /= (null) then
                genericConfigurationProfileAction := GenericProfileAction_Package.Create (This.getGenericProfileActionsJPanel.getGenericProfileActionJPanel, actionNode);
                This.getHashMap.put (genericConfigurationProfileAction.getName, genericConfigurationProfileAction);
                This.getDefaultListModelHelper.add (genericConfigurationProfileAction.getName);
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
        return GenericProfileAction_Access (This.getHashMap.get (string_Id));
   end getAction;

   --  throws Exception
   procedure add (This : in out GenericProfileActions; name : Unbounded_String) is
      genericProfileAction : GenericProfileAction_Access;
   begin
        genericProfileAction := GenericProfileAction_Package.Create (name);
        This.getHashMap.put (genericProfileAction.getName, genericProfileAction);
        This.getDefaultListModelHelper.add (genericProfileAction.getName);
        This.getDefaultListModelHelper.initDefaultModelList;
        This.save;
   end add;

   --  throws Exception
   procedure remove (This : in out GenericProfileActions; name : Unbounded_String) is
   begin
        This.getHashMap.remove (name);
        This.getDefaultListModelHelper.remove (name);
        This.getDefaultListModelHelper.initDefaultModelList;
        This.save;
   end remove;

   function toHashMap (This : in out GenericProfileActions) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out GenericProfileActions; document : Document_Access) return Node_Access is
      node : Node_Access;
      set : Set_Access;
      actionNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      nextActionName : Unbounded_String;
      nextGenericProfileAction : GenericProfileAction_Access;
      index : Integer;
   begin
        node := document.createElement (GenericProfileActionsData_Package.NAME);
        set := This.getHashMap.keySet;
        actionNameArray := set.toArray;
        size := actionNameArray'Length;
        for index in 0 .. (size) - 1 loop
            nextActionName := Unbounded_String (actionNameArray (index));
            nextGenericProfileAction := GenericProfileAction_Access (This.getAction (nextActionName));
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
        node := This.toXmlNode (document);
        document.appendChild (node);
        return document;
   end toXmlDoc;

   function getGenericProfileActionsJPanel (This : in out GenericProfileActions) return GenericProfileActionsJPanel_Access is
   begin
        return This.genericProfileActionsJPanel;
   end getGenericProfileActionsJPanel;

   procedure setGenericProfileActionsJPanel (This : in out GenericProfileActions; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access) is
   begin
        This.genericProfileActionsJPanel := genericProfileActionsJPanel;
   end setGenericProfileActionsJPanel;

   function getHashMap (This : in out GenericProfileActions) return HashMap_Access is
   begin
        return This.hashMap;
   end getHashMap;

   procedure setHashMap (This : in out GenericProfileActions; hashMap : HashMap_Access) is
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

   procedure getDefaultListModelHelper (This : in out GenericProfileActions) is
      Java_Result : constant DefaultListModelHelper_Access := GenericProfileActions'Class (This).getDefaultListModelHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDefaultListModelHelper;

   procedure getAction (This : in out GenericProfileActions; string_Id : Unbounded_String) is
      Java_Result : constant GenericProfileAction_Access := GenericProfileActions'Class (This).getAction (string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAction;

   procedure toHashMap (This : in out GenericProfileActions) is
      Java_Result : constant HashMap_Access := GenericProfileActions'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out GenericProfileActions; document : Document_Access) is
      Java_Result : constant Node_Access := GenericProfileActions'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toXmlDoc (This : in out GenericProfileActions) is
      Java_Result : constant Document_Access := GenericProfileActions'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure getGenericProfileActionsJPanel (This : in out GenericProfileActions) is
      Java_Result : constant GenericProfileActionsJPanel_Access := GenericProfileActions'Class (This).getGenericProfileActionsJPanel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGenericProfileActionsJPanel;

   procedure getHashMap (This : in out GenericProfileActions) is
      Java_Result : constant HashMap_Access := GenericProfileActions'Class (This).getHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashMap;

   procedure getName (This : in out GenericProfileActions) is
      Java_Result : constant Unbounded_String := GenericProfileActions'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

begin
   null;
   DEFAULT_PROFILE_ACTIONS_PATH := Java_Image (GenericProfiles_Package.DEFAULT_PROFILES_PATH) & To_Unbounded_String ("actions/");

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;


