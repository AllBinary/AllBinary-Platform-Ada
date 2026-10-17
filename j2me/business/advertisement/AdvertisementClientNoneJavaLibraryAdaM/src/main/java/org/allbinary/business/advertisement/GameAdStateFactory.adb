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
      Initialize (This.all);
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
   function getInstanceForApp (This : in out GameAdStateFactory; softwareInformation : SoftwareInformation_Access) return GameAdStateBase_Access is
   begin
        This.gameAdState := This.gameAdStateArray (0);
        return This.gameAdStateArray (0);
   end getInstanceForApp;

   function isEnabled (This : in out GameAdStateFactory) return Boolean is
   begin
        return False;
   end isEnabled;

   procedure getInstance is
      Java_Result : constant GameAdStateFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getCurrentInstance (This : in out GameAdStateFactory) is
      Java_Result : constant GameAdState_Access := GameAdStateFactory'Class (This).getCurrentInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentInstance;

   procedure getInstanceForApp (This : in out GameAdStateFactory; softwareInformation : SoftwareInformation_Access) is
      Java_Result : constant GameAdStateBase_Access := GameAdStateFactory'Class (This).getInstanceForApp (softwareInformation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForApp;

   procedure isEnabled (This : in out GameAdStateFactory) is
      Java_Result : constant Boolean := GameAdStateFactory'Class (This).isEnabled;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnabled;

begin
   null;
   instance := GameAdStateFactory_Package.Create;

end org.allbinary.business.advertisement.GameAdStateFactory_Package;


