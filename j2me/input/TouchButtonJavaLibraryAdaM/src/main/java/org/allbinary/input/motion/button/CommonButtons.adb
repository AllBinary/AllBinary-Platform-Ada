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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

package body org.allbinary.input.motion.button.CommonButtons_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   procedure Initialize_Fields (This : in out CommonButtons'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   function getInstance return CommonButtons_Access is
   begin
        return CommonButtons_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CommonButtons'Class) is
      displayInfo : DisplayInfoSingleton_Access;
      commonButtonSize : Integer;
      totalColumns : Integer;
      totalRows : Integer;
      max : Integer;
   begin
      Initialize_Fields (This);
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        commonButtonSize := 128;
        while (commonButtonSize) > (64) loop
            totalColumns := (displayInfo.getLastWidth) / (commonButtonSize);
            totalRows := (displayInfo.getLastHeight) / (commonButtonSize);
            max := totalColumns;
            if (totalRows) > (max) then
                max := totalRows;
            end if;
            if (max) > (9) then
                exit;
            end if;
            commonButtonSize := Java_Shift_Right_Arithmetic (commonButtonSize, 1);
        end loop;
        This.STANDARD_BUTTON_SIZE := commonButtonSize;
        This.NORMAL_BUTTON := Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, This.STANDARD_BUTTON_SIZE, This.STANDARD_BUTTON_SIZE);
        This.LARGE_BUTTON := Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, Java_Shift_Left (This.STANDARD_BUTTON_SIZE, 1), Java_Shift_Left (This.STANDARD_BUTTON_SIZE, 1));
   end Initialize;

   function Create return CommonButtons_Access is
      This : constant CommonButtons_Access := new CommonButtons;
   begin
      CommonButtons_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := CommonButtons_Package.Create;

end org.allbinary.input.motion.button.CommonButtons_Package;


