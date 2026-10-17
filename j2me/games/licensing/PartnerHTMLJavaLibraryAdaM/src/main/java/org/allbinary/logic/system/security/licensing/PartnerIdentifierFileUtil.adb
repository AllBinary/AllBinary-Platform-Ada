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


package body org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package is

   procedure Initialize_Fields (This : in out PartnerIdentifierFileUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.FILE_NAME := To_Unbounded_String ("partner.txt");
   end Initialize_Fields;

   procedure Initialize (This : in out PartnerIdentifierFileUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PartnerIdentifierFileUtil_Access is
      This : constant PartnerIdentifierFileUtil_Access := new PartnerIdentifierFileUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PartnerIdentifierFileUtil_Access is
   begin
        return PartnerIdentifierFileUtil_Package.instance;
   end getInstance;

   function get (This : in out PartnerIdentifierFileUtil) return Unbounded_String is
      resourceUtil : ResourceUtil_Access;
      partnerString : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            resourceUtil := ResourceUtil_Package.getInstance;
            partnerString := StringUtil_Package.getInstance.EMPTY_STRING;
            return partnerString;
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET, e);
            return StringUtil_Package.getInstance.NULL_STRING;
        end;
   end get;

   procedure getInstance is
      Java_Result : constant PartnerIdentifierFileUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure get (This : in out PartnerIdentifierFileUtil) is
      Java_Result : constant Unbounded_String := PartnerIdentifierFileUtil'Class (This).get;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   instance := PartnerIdentifierFileUtil_Package.Create;

end org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package;


