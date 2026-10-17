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


package body org.allbinary.logic.math.MathData_Package is

   procedure Initialize_Fields (This : in out MathData'Class) is
   begin
      null;
      
      This.PLUS := To_Unbounded_String ("+");
      This.GREATER_THAN := To_Unbounded_String (">");
      
      
      
   end Initialize_Fields;


   function getInstance return MathData_Access is
   begin
        return MathData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out MathData'Class) is
      commonSeps : CommonSeps_Access;
   begin
      Initialize_Fields (This);
        commonSeps := CommonSeps_Package.getInstance;
        This.EQUALS := commonSeps.EQUALS;
        This.MINUS := commonSeps.DASH;
        This.DIVIDE := commonSeps.FORWARD_SLASH;
        This.MULTIPLY := CommonPhoneStrings_Package.getInstance.STAR;
   end Initialize;

   function Create return MathData_Access is
      This : constant MathData_Access := new MathData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant MathData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := MathData_Package.Create;

end org.allbinary.logic.math.MathData_Package;


