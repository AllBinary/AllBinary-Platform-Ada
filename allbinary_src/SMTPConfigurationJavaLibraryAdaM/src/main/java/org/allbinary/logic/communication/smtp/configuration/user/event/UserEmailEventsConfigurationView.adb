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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationView_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationView_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationMapping_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationMapping_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out UserEmailEventsConfigurationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventsConfigurationView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      childNodeList : NodeList_Access;
      emailEventConfigurationNodeVector : BasicArrayList_Access;
      size : Integer;
      userEmailConfigurationNode : Node_Access;
      userEmailEventConfigurationView : UserEmailEventConfigurationView_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.userEmailEventsConfigurationInterface := UserEmailEventsConfigurationInterface_Access (UserEmailEventsConfiguration_Package.Create);
        childNodeList := node.getChildNodes;
        emailEventConfigurationNodeVector := DomSearchHelper_Package.getAllNodesNoThrow (UserEmailEventConfigurationData_Package.NAME, childNodeList);
        size := emailEventConfigurationNodeVector.size;
        for index in 0 .. (size) - 1 loop
            userEmailConfigurationNode := Node_Access (emailEventConfigurationNodeVector.get (index));
            userEmailEventConfigurationView := UserEmailEventConfigurationView_Package.Create (userEmailConfigurationNode);
            This.userEmailEventsConfigurationInterface.addUserEmailEventConfiguration (userEmailEventConfigurationView.getUserEmailEventConfigurationInterface);
        end loop;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return UserEmailEventsConfigurationView_Access is
      This : constant UserEmailEventsConfigurationView_Access := new UserEmailEventsConfigurationView;
   begin
      UserEmailEventsConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out UserEmailEventsConfigurationView'Class; userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class) is
      userEmailEventsConfigurationInterface : constant UserEmailEventsConfigurationInterface_Access := UserEmailEventsConfigurationInterface_Access (userEmailEventsConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface;
   end Initialize;

   function Create (userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class) return UserEmailEventsConfigurationView_Access is
      This : constant UserEmailEventsConfigurationView_Access := new UserEmailEventsConfigurationView;
   begin
      UserEmailEventsConfigurationView_Package.Initialize (This.all, userEmailEventsConfigurationInterface_Param);
      return This;
   end Create;

   function getUserEmailEventsConfigurationInterface (This : in out UserEmailEventsConfigurationView) return UserEmailEventsConfigurationInterface_Access is
   begin
        return This.userEmailEventsConfigurationInterface;
   end getUserEmailEventsConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out UserEmailEventsConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      userEmailConfigurationMapping : UserEmailEventsConfigurationMapping_Access;
      node : Node_Access;
      emailEventHashMap : HashMap_Access;
      set : Set_Access;
      eventNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      eventName : Unbounded_String;
      userEmailEventsConfigurationInterface : UserEmailEventConfigurationInterface_Access;
      userEmailEventConfigurationView : UserEmailEventConfigurationView_Access;
      index : Integer;
   begin
        userEmailConfigurationMapping := UserEmailEventsConfigurationMapping_Package.Create (This.userEmailEventsConfigurationInterface);
        node := document.createElement (UserEmailEventsConfigurationData_Package.NAME);
        emailEventHashMap := UserEmailEventsConfigurationView'Class (This).getUserEmailEventsConfigurationInterface.getEventConfigurationHashMap;
        set := emailEventHashMap.keySet;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Number Of Email Events Specified in file: ") & Java_Image (set.size), UserEmailEventsConfigurationView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        eventNameArray := set.toArray;
        size := eventNameArray'Length;
        for index in 0 .. (size) - 1 loop
            eventName := Java_Unbox (eventNameArray (index));
            userEmailEventsConfigurationInterface := UserEmailEventConfigurationInterface_Access (emailEventHashMap.get (Java_Box (eventName)));
            userEmailEventConfigurationView := UserEmailEventConfigurationView_Package.Create (userEmailEventsConfigurationInterface);
            node.appendChild (userEmailEventConfigurationView.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out UserEmailEventsConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserEmailEventsConfigurationView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package;


