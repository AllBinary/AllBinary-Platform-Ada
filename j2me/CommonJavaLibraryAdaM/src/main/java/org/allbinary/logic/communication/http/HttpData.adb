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


package body org.allbinary.logic.communication.http.HttpData_Package is

   procedure Initialize_Fields (This : in out HttpData'Class) is
   begin
      null;
      
      
      
      This.URL_LABEL := To_Unbounded_String ("Url: ");
   end Initialize_Fields;


   function getInstance return HttpData_Access is
   begin
        return HttpData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HttpData'Class) is
      commonSeps : CommonSeps_Access;
   begin
      Initialize_Fields (This);
        commonSeps := CommonSeps_Package.getInstance;
        This.EQUALS := commonSeps.EQUALS;
        This.PARAM_SEP := commonSeps.AMPERSAND;
        This.URL_PARAM_SEP := commonSeps.QUESTION;
   end Initialize;

   function Create return HttpData_Access is
      This : constant HttpData_Access := new HttpData;
   begin
      HttpData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := HttpData_Package.Create;

end org.allbinary.logic.communication.http.HttpData_Package;


