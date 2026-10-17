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


package body org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsData_Package is

   procedure Initialize_Fields (This : in out DisplayInBrowserContraintsData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DisplayInBrowserContraintsData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DisplayInBrowserContraintsData_Access is
      This : constant DisplayInBrowserContraintsData_Access := new DisplayInBrowserContraintsData;
   begin
      DisplayInBrowserContraintsData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("DISPLAYBROWSERCONSTRAINTS_NAME");
   FRAMEABLE := To_Unbounded_String ("DISPLAYBROWSERCONSTRAINTS_FRAMEABLE");
   MOUNTABLE := To_Unbounded_String ("DISPLAYBROWSERCONSTRAINTS_MOUNTABLE");
   QUICKFRAMEABLE := To_Unbounded_String ("DISPLAYBROWSERCONSTRAINTS_QUICKFRAMEABLE");
   MOUNTABLELINK := To_Unbounded_String ("DISPLAYBROWSERCONSTRAINTS_MOUNTABLELINK");

end org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsData_Package;


