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


package body org.allbinary.image.ChoiceGroupImageUtil_Package is

   procedure Initialize_Fields (This : in out ChoiceGroupImageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ChoiceGroupImageUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ChoiceGroupImageUtil_Access is
      This : constant ChoiceGroupImageUtil_Access := new ChoiceGroupImageUtil;
   begin
      ChoiceGroupImageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ChoiceGroupImageUtil_Access is
   begin
        return ChoiceGroupImageUtil_Package.instance;
   end getInstance;

   procedure init (This : in out ChoiceGroupImageUtil) is
      features : Features_Access;
      choiceGroupFactory : ChoiceGroupImageFactory_Access;
      imageArray : Image_Access_Array_Access;
      preResourceImageUtil : PreResourceImageUtil_Access;
      size : Integer;
      index : Integer;
   begin
        features := Features_Package.getInstance;
        choiceGroupFactory := ChoiceGroupImageFactory_Package.getInstance;
        imageArray := choiceGroupFactory.getImageArray;
        if features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
            size := imageArray'Length;
            for index in 0 .. (size) - 1 loop
                imageArray (index) := preResourceImageUtil.encapsulate (imageArray (index));
            end loop;
            choiceGroupFactory.init (imageArray);
        end if;
   end init;

   procedure update (This : in out ChoiceGroupImageUtil; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
      features : Features_Access;
      choiceGroupFactory : ChoiceGroupImageFactory_Access;
      imageArray : Image_Access_Array_Access;
      preResourceImageUtil : PreResourceImageUtil_Access;
      size : Integer;
      index : Integer;
   begin
        features := Features_Package.getInstance;
        choiceGroupFactory := ChoiceGroupImageFactory_Package.getInstance;
        imageArray := choiceGroupFactory.getImageArray;
        if features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
            size := imageArray'Length;
            for index in 0 .. (size) - 1 loop
                preResourceImageUtil.updateGL (gl, imageArray (index));
            end loop;
        end if;
        choiceGroupFactory.init (imageArray);
   end update;

   procedure update (This : in out ChoiceGroupImageUtil; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      features : Features_Access;
      choiceGroupFactory : ChoiceGroupImageFactory_Access;
      imageArray : Image_Access_Array_Access;
      preResourceImageUtil : PreResourceImageUtil_Access;
      size : Integer;
      index : Integer;
   begin
        features := Features_Package.getInstance;
        choiceGroupFactory := ChoiceGroupImageFactory_Package.getInstance;
        imageArray := choiceGroupFactory.getImageArray;
        if features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
            size := imageArray'Length;
            for index in 0 .. (size) - 1 loop
                preResourceImageUtil.update (graphics, imageArray (index));
            end loop;
        end if;
        choiceGroupFactory.init (imageArray);
   end update;

begin
   null;
   instance := ChoiceGroupImageUtil_Package.Create;

end org.allbinary.image.ChoiceGroupImageUtil_Package;


