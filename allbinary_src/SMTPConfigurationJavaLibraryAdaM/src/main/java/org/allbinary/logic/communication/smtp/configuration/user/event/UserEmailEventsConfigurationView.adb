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


package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package is

   procedure Initialize_Fields (This : in out UserEmailEventsConfigurationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventsConfigurationView'Class; node : Node_Access) is
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

   function Create (node : Node_Access) return UserEmailEventsConfigurationView_Access is
      This : constant UserEmailEventsConfigurationView_Access := new UserEmailEventsConfigurationView;
   begin
      UserEmailEventsConfigurationView_Package.Initialize (This.all, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out UserEmailEventsConfigurationView'Class; userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface;
   end Initialize;

   function Create (userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access) return UserEmailEventsConfigurationView_Access is
      This : constant UserEmailEventsConfigurationView_Access := new UserEmailEventsConfigurationView;
   begin
      UserEmailEventsConfigurationView_Package.Initialize (This.all, userEmailEventsConfigurationInterface);
      return This;
   end Create;

   function getUserEmailEventsConfigurationInterface (This : in out UserEmailEventsConfigurationView) return UserEmailEventsConfigurationInterface_Access is
   begin
        return This.userEmailEventsConfigurationInterface;
   end getUserEmailEventsConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out UserEmailEventsConfigurationView; document : Document_Access) return Node_Access is
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
        emailEventHashMap := This.getUserEmailEventsConfigurationInterface.getEventConfigurationHashMap;
        set := emailEventHashMap.keySet;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Number Of Email Events Specified in file: ") & Java_Image (set.size), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        eventNameArray := set.toArray;
        size := eventNameArray'Length;
        for index in 0 .. (size) - 1 loop
            eventName := Unbounded_String (eventNameArray (index));
            userEmailEventsConfigurationInterface := UserEmailEventConfigurationInterface_Access (emailEventHashMap.get (eventName));
            userEmailEventConfigurationView := UserEmailEventConfigurationView_Package.Create (userEmailEventsConfigurationInterface);
            node.appendChild (userEmailEventConfigurationView.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out UserEmailEventsConfigurationView; document : Document_Access) is
      Java_Result : constant Node_Access := UserEmailEventsConfigurationView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package;


