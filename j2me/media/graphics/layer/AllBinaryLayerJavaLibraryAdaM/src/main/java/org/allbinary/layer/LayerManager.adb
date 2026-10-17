--  Generated Code Do Not Modify


package body org.allbinary.layer.LayerManager_Package is

   procedure Initialize_Fields (This : in out LayerManager'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.systemWrapper := ABSystemWrapper_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      
      This.list := BasicArrayListD_Package.Create;
      This.anyType := SynchObject_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out LayerManager'Class; layerManagerLogging_Param : access LayerManagerLoggingBase_Package.LayerManagerLoggingBase'Class) is
      layerManagerLogging : constant LayerManagerLoggingBase_Access := LayerManagerLoggingBase_Access (layerManagerLogging_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, LayerManager_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.layerManagerLogging := layerManagerLogging;
   end Initialize;

   function Create (layerManagerLogging_Param : access LayerManagerLoggingBase_Package.LayerManagerLoggingBase'Class) return LayerManager_Access is
      This : constant LayerManager_Access := new LayerManager;
   begin
      LayerManager_Package.Initialize (This.all, layerManagerLogging_Param);
      return This;
   end Create;

   function contains (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        return This.list.contains (layerInterface);
   end contains;

   --  throws Exception
   procedure update (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      had : Boolean;
      nextLayerInterface : AllBinaryLayer_Access;
      size : Integer;
      index : Integer;
   begin
        had := This.list.remove (layerInterface);
        if had then
            nextLayerInterface := null;
            size := This.list.size;
            for index in 0 .. (size) - 1 loop
                nextLayerInterface := AllBinaryLayer_Access (This.list.get (index));
                if (layerInterface.getZP) > (nextLayerInterface.getZP) then
                    This.list.addAt (index, layerInterface);
                    return;
                end if;
            end loop;
            This.list.add (layerInterface);
        end if;
   end update;

   --  throws Exception
   procedure insert (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      nextLayerInterface : AllBinaryLayer_Access;
      size : Integer;
      index : Integer;
   begin
        nextLayerInterface := null;
        size := This.list.size;
        for index in 0 .. (size) - 1 loop
            nextLayerInterface := AllBinaryLayer_Access (This.list.get (index));
            if (layerInterface.getZP) > (nextLayerInterface.getZP) then
                This.appendAt (layerInterface, index);
                return;
            end if;
        end loop;
        This.append (layerInterface);
   end insert;

   --  throws Exception
   procedure append (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.layerManagerLogging.append (layerInterface);
        This.list.add (layerInterface);
   end append;

   --  throws Exception
   procedure appendAt (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.layerManagerLogging.appendAt (layerInterface, index);
        This.list.addAt (index, layerInterface);
   end appendAt;

   --  throws Exception
   procedure remove (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      result : Boolean;
   begin
        begin  --  synchronized
            This.layerManagerLogging.remove (layerInterface);
            result := This.list.remove (layerInterface);
            This.layerManagerLogging.removeResult (LayerManager_Access'(This'Unchecked_Access), layerInterface, result);
        end;
   end remove;

   function getLayerAt (This : in out LayerManager; index : Integer) return Layer_Access is
   begin
        return Layer_Access (This.list.objectArray (index));
   end getLayerAt;

   function getSize (This : in out LayerManager) return Integer is
   begin
        return This.list.size;
   end getSize;

   --  throws Exception
   procedure cleanup (This : in out LayerManager) is
   begin
        begin  --  synchronized
            This.list.clear;
            This.layerManagerLogging.clear;
            This.tsUtil.gc;
            This.tsUtil.gc;
        end;
   end cleanup;

   procedure paint (This : in out LayerManager; g_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
      comp : Layer_Access;
      index : Integer;
   begin
        begin  --  synchronized
            comp := null;
            index := This.list.size;
            while (Java_Pre_Decrement (index)) >= (0) loop
                comp := Layer_Access (This.list.objectArray (index));
                if ((comp) /= (null)) and then (comp.isVisible) then
                    comp.paint (g);
                end if;
            end loop;
        end;
   end paint;

   procedure contains (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := LayerManager'Class (This).contains (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end contains;

   procedure getLayerAt (This : in out LayerManager; index : Integer) is
      Java_Result : constant Layer_Access := LayerManager'Class (This).getLayerAt (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerAt;

end org.allbinary.layer.LayerManager_Package;


