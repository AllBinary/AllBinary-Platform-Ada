--  Generated Code Do Not Modify


package body org.allbinary.business.advertisement.GameAdStateFactory_Package is

   procedure Initialize_Fields (This : in out GameAdStateFactory'Class) is
   begin
      null;
      This.gameAdStateArray := new GameAdState_Access_Array'(0 => GameAdState_Package.Create (AppNameLicensingAdConfiguration_Package.Create));
      This.gameAdState := This.gameAdStateArray (0);
   end Initialize_Fields;

   procedure Initialize (This : in out GameAdStateFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameAdStateFactory_Access is
      This : constant GameAdStateFactory_Access := new GameAdStateFactory;
   begin
      GameAdStateFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameAdStateFactory_Access is
   begin
        return GameAdStateFactory_Package.instance;
   end getInstance;

   function getCurrentInstance (This : in out GameAdStateFactory) return GameAdState_Access is
   begin
        return This.gameAdState;
   end getCurrentInstance;

   --  throws Exception
   function getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation'Class) return GameAdStateBase_Access is
      softwareInformation : SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
   begin
        This.gameAdState := This.gameAdStateArray (0);
        return This.gameAdStateArray (0);
   end getInstanceForApp;

   function isEnabled (This : in out GameAdStateFactory) return Boolean is
   begin
        return False;
   end isEnabled;

   procedure getInstanceForApp (This : in out GameAdStateFactory; softwareInformation_Param : access SoftwareInformation'Class) is
      Java_Result : constant GameAdStateBase_Access := GameAdStateFactory'Class (This).getInstanceForApp (softwareInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForApp;

begin
   null;
   instance := GameAdStateFactory_Package.Create;

end org.allbinary.business.advertisement.GameAdStateFactory_Package;


