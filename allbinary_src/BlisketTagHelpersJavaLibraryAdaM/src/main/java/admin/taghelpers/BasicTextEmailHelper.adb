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


package body admin.taghelpers.BasicTextEmailHelper_Package is

   procedure Initialize_Fields (This : in out BasicTextEmailHelper'Class) is
   begin
      null;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTextEmailHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.pageContext := pageContext;
        This.hashMap := hashMap;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return BasicTextEmailHelper_Access is
      This : constant BasicTextEmailHelper_Access := new BasicTextEmailHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   procedure send (This : in out BasicTextEmailHelper) is
      adminEmailSubject : Unbounded_String;
      adminEmailTextBody : Unbounded_String;
      adminBasicEmailInfo : BasicEmailInfo_Access;
      adminEmailInfo : EmailInfo_Access;
      adminUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        adminEmailSubject := Unbounded_String (This.hashMap.get (To_Unbounded_String ("Subject")));
        adminEmailTextBody := Unbounded_String (This.hashMap.get (To_Unbounded_String ("Body")));
        adminBasicEmailInfo := BasicEmailInfo_Access (AdminEmailInfo_Package.Create (adminEmailSubject, adminEmailTextBody));
        adminEmailInfo := EmailInfo_Package.Create (adminBasicEmailInfo);
        adminUserEmailEventHandler := AdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, UserEmailEventNameData_Package.INSTALLER);
        adminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.INSTALLER, adminEmailInfo);
   end send;

end admin.taghelpers.BasicTextEmailHelper_Package;


