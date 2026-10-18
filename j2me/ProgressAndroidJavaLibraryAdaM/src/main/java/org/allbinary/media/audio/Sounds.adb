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


package body org.allbinary.media.audio.Sounds_Package is

   procedure Initialize_Fields (This : in out Sounds'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.soundStrings := SoundStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Sounds'Class; soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) is
      soundsFactoryInterface : constant SoundsFactoryInterface_Access := SoundsFactoryInterface_Access (soundsFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.soundsFactoryInterface := soundsFactoryInterface;
   end Initialize;

   function Create (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) return Sounds_Access is
      This : constant Sounds_Access := new Sounds;
   begin
      Sounds_Package.Initialize (This.all, soundsFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out Sounds) is
      commonLabels : CommonLabels_Access;
      progressCanvas : ProgressCanvas_Access;
      soundInterfaceArray : Sound_Access_Array_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      indexInteger : Integer;
      indexString : Unbounded_String;
      stringBuffer : StringMaker_Access;
      soundInterfaceCanBeNull : Sound_Access;
      i : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, Sounds_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        commonLabels := CommonLabels_Package.getInstance;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        This.soundsFactoryInterface.init;
        soundInterfaceArray := This.soundsFactoryInterface.getSoundInterfaceArray;
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        indexInteger := null;
        indexString := Null_Unbounded_String;
        stringBuffer := StringMaker_Package.Create;
        for i in 0 .. (soundInterfaceArray'Length) - 1 loop
            soundInterfaceCanBeNull := soundInterfaceArray (i);
            if (soundInterfaceCanBeNull) /= (null) then
                indexInteger := smallIntegerSingletonFactory.getAt (i);
                indexString := To_Unbounded_String (Java_Image (indexInteger));
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (commonLabels.INDEX_LABEL);
                stringBuffer.append (indexString);
                stringBuffer.append (This.soundStrings.SOUND);
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (soundInterfaceCanBeNull.all'Tag)));
                This.logUtil.putF (stringBuffer.toString, Sounds_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                soundInterfaceCanBeNull.init;
                progressCanvas.addNormalPortion (100, StringMaker_Package.Create.append (This.soundStrings.INIT_SOUND).append (indexString).toString);
            end if;
        end loop;
        This.soundsFactoryInterface.setInitialized (True);
        This.logUtil.putF (This.commonStrings.END_Id, Sounds_Access'(This'Unchecked_Access), This.commonStrings.INIT);
   end init;

   --  throws Exception
   procedure stopAll (This : in out Sounds) is
      soundInterfaceArray : Sound_Access_Array_Access;
      progressCanvas : ProgressCanvas_Access;
      player : Player_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, Sounds_Access'(This'Unchecked_Access), This.soundStrings.STOP_ALL);
        soundInterfaceArray := This.soundsFactoryInterface.getSoundInterfaceArray;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        player := null;
        for index in 0 .. (soundInterfaceArray'Length) - 1 loop
            if (soundInterfaceArray (index)) /= (null) then
                player := soundInterfaceArray (index).getPlayerP;
                if (player) /= (null) then
                    player.stop;
                    progressCanvas.addPortion (100, This.soundStrings.STOPPING_SOUND, index);
                end if;
            end if;
        end loop;
   end stopAll;

   --  throws Exception
   procedure closeAll (This : in out Sounds) is
      soundInterfaceArray : Sound_Access_Array_Access;
      progressCanvas : ProgressCanvas_Access;
      player : Player_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, Sounds_Access'(This'Unchecked_Access), This.soundStrings.CLOSE_ALL);
        soundInterfaceArray := This.soundsFactoryInterface.getSoundInterfaceArray;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        player := null;
        for index in 0 .. (soundInterfaceArray'Length) - 1 loop
            if (soundInterfaceArray (index)) /= (null) then
                player := soundInterfaceArray (index).getPlayerP;
                if (player) /= (null) then
                    player.close;
                    progressCanvas.addPortion (100, This.soundStrings.CLOSING_SOUND, index);
                end if;
            end if;
        end loop;
   end closeAll;

end org.allbinary.media.audio.Sounds_Package;


