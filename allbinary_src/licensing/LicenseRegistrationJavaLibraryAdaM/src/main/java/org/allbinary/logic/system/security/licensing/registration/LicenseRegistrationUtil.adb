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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.canvas.SpecialMessageUtil_Package; use org.allbinary.canvas.SpecialMessageUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package; use org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;
with org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package; use org.allbinary.logic.system.security.licensing.registration.XmlRpcRemoteLicenseRegistrationClient_Package;

package body org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SpecialMessageUtil_Package renames Standard.org.allbinary.canvas.SpecialMessageUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   procedure Initialize_Fields (This : in out LicenseRegistrationUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LicenseRegistrationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LicenseRegistrationUtil_Access is
      This : constant LicenseRegistrationUtil_Access := new LicenseRegistrationUtil;
   begin
      LicenseRegistrationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; registrationId : Unbounded_String) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commonStrings : CommonStrings_Access;
      registrationConfiguration : RegistrationConfiguration_Access;
      hashtable : ABHashtable_Access;
   begin
        begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.put (Java_Image (CommonLabels_Package.getInstance.START_LABEL) & To_Unbounded_String ("License Registration"), To_Unbounded_String ("LicenseRegistrationUtil"), commonStrings.PROCESS);
            registrationConfiguration := RegistrationConfiguration_Package.getInstance;
            registrationConfiguration.setRegistrationCode (registrationId);
            registrationConfiguration.write;
            hashtable := abeClientInformation.toHashtable;
            hashtable.put (RegistrationConfiguration_Package.getInstance.NAME, Java_Box (registrationId));
            hashtable.put (Java_Box (To_Unbounded_String ("message")), SpecialMessageUtil_Package.getInstance.get);
            XmlRpcRemoteLicenseRegistrationClient_Package.Create (abeClientInformation).get (hashtable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("License Registration Exception"), To_Unbounded_String ("LicenseRegistrationUtil"), To_Unbounded_String ("License Registration"), e);
                end;
        end;
   end process;

end org.allbinary.logic.system.security.licensing.registration.LicenseRegistrationUtil_Package;


