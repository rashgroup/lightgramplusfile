.class public Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;
.super Ljava/lang/Object;
.source "SequenceParameterSetRbsp.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    invoke-direct {v3, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v0, "sps_video_parameter_set_id"

    invoke-virtual {v3, v8, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    const-string/jumbo v0, "sps_max_sub_layers_minus1"

    invoke-virtual {v3, v6, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    const-string/jumbo v0, "sps_temporal_id_nesting_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    invoke-direct {p0, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;->profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    const-string/jumbo v0, "sps_seq_parameter_set_id"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "chroma_format_idc"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    const-string/jumbo v0, "pic_width_in_luma_samples"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "pic_width_in_luma_samples"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "conformance_window_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "conf_win_left_offset"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "conf_win_right_offset"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "conf_win_top_offset"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "conf_win_bottom_offset"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "bit_depth_luma_minus8"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "bit_depth_chroma_minus8"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "log2_max_pic_order_cnt_lsb_minus4"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "sps_sub_layer_ordering_info_present_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :goto_0
    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    new-array v6, v0, [I

    new-array v0, v0, [I

    if-eqz v4, :cond_4

    :goto_1
    if-le v1, v2, :cond_5

    const-string/jumbo v0, "log2_min_luma_coding_block_size_minus3"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "log2_diff_max_min_luma_coding_block_size"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "log2_min_transform_block_size_minus2"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "log2_diff_max_min_transform_block_size"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "max_transform_hierarchy_depth_inter"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "max_transform_hierarchy_depth_intra"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v0, "scaling_list_enabled_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sps_scaling_list_data_present_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;->scaling_list_data(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    :cond_1
    const-string/jumbo v0, "amp_enabled_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v0, "sample_adaptive_offset_enabled_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v0, "pcm_enabled_flag"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "pcm_sample_bit_depth_luma_minus1"

    invoke-virtual {v3, v8, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    const-string/jumbo v0, "pcm_sample_bit_depth_chroma_minus1"

    invoke-virtual {v3, v8, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    const-string/jumbo v0, "log2_min_pcm_luma_coding_block_size_minus3"

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sps_max_dec_pic_buffering_minus1["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sps_max_num_reorder_pics["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v4

    aput v4, v6, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sps_max_latency_increase_plus1["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .locals 19

    const/4 v2, 0x2

    const-string/jumbo v3, "general_profile_space"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const-string/jumbo v2, "general_tier_flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/4 v2, 0x5

    const-string/jumbo v3, "general_profile_idc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/16 v2, 0x20

    new-array v3, v2, [Z

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x20

    if-lt v2, v4, :cond_1

    const-string/jumbo v2, "general_progressive_source_flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v2, "general_interlaced_source_flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v2, "general_non_packed_constraint_flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v2, "general_frame_only_constraint_flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/16 v2, 0x2c

    const-string/jumbo v3, "general_reserved_zero_44bits"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readByte()I

    move/from16 v0, p1

    new-array v5, v0, [Z

    move/from16 v0, p1

    new-array v6, v0, [Z

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p1

    if-lt v2, v0, :cond_2

    if-lez p1, :cond_0

    const/16 v2, 0x8

    new-array v3, v2, [I

    move/from16 v2, p1

    :goto_2
    const/16 v4, 0x8

    if-lt v2, v4, :cond_3

    :cond_0
    move/from16 v0, p1

    new-array v7, v0, [I

    move/from16 v0, p1

    new-array v8, v0, [Z

    move/from16 v0, p1

    new-array v9, v0, [I

    const/16 v2, 0x20

    move/from16 v0, p1

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    move/from16 v0, p1

    new-array v10, v0, [Z

    move/from16 v0, p1

    new-array v11, v0, [Z

    move/from16 v0, p1

    new-array v12, v0, [Z

    move/from16 v0, p1

    new-array v13, v0, [Z

    move/from16 v0, p1

    new-array v14, v0, [J

    move/from16 v0, p1

    new-array v15, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    move/from16 v0, p1

    if-lt v4, v0, :cond_4

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool()Z

    move-result v4

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sub_layer_profile_present_flag["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v5, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sub_layer_level_present_flag["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "reserved_zero_2bits["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_4
    aget-boolean v3, v5, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "sub_layer_profile_space["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v3

    aput v3, v7, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sub_layer_tier_flag["

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v8, v4

    const/4 v3, 0x5

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "sub_layer_profile_idc["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v3

    aput v3, v9, v4

    const/4 v3, 0x0

    :goto_4
    const/16 v16, 0x20

    move/from16 v0, v16

    if-lt v3, v0, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sub_layer_progressive_source_flag["

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v10, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sub_layer_interlaced_source_flag["

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v11, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sub_layer_non_packed_constraint_flag["

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v12, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sub_layer_frame_only_constraint_flag["

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v13, v4

    const/16 v3, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(I)J

    move-result-wide v16

    aput-wide v16, v14, v4

    :cond_5
    aget-boolean v3, v6, v4

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "sub_layer_level_idc["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v3

    aput v3, v15, v4

    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_3

    :cond_7
    aget-object v16, v2, v4

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "sub_layer_profile_compatibility_flag["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v17

    aput-boolean v17, v16, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4
.end method

.method private scaling_list_data(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .locals 11

    const/4 v0, 0x4

    new-array v4, v0, [[Z

    const/4 v0, 0x4

    new-array v5, v0, [[I

    const/4 v0, 0x2

    new-array v6, v0, [[I

    const/4 v0, 0x4

    new-array v7, v0, [[[I

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x4

    if-lt v3, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    const/4 v0, 0x3

    if-ne v3, v0, :cond_8

    const/4 v0, 0x2

    :goto_2
    if-lt v2, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    const/4 v0, 0x2

    :goto_3
    new-array v0, v0, [Z

    aput-object v0, v4, v3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    const/4 v0, 0x2

    :goto_4
    new-array v0, v0, [I

    aput-object v0, v5, v3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_5

    const/4 v0, 0x2

    :goto_5
    new-array v0, v0, [[I

    aput-object v0, v7, v3

    aget-object v0, v4, v3

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool()Z

    move-result v1

    aput-boolean v1, v0, v2

    aget-object v0, v4, v3

    aget-boolean v0, v0, v2

    if-nez v0, :cond_6

    aget-object v0, v5, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "scaling_list_pred_matrix_id_delta["

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "]["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_3

    :cond_4
    const/4 v0, 0x6

    goto :goto_4

    :cond_5
    const/4 v0, 0x6

    goto :goto_5

    :cond_6
    const/16 v0, 0x8

    const/16 v1, 0x40

    const/4 v8, 0x1

    shl-int/lit8 v9, v3, 0x1

    add-int/lit8 v9, v9, 0x4

    shl-int/2addr v8, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v1, 0x1

    if-le v3, v1, :cond_7

    add-int/lit8 v0, v3, -0x2

    aget-object v0, v6, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "scaling_list_dc_coef_minus8["

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, "- 2]["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v0, v3, -0x2

    aget-object v0, v6, v0

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x8

    :cond_7
    aget-object v1, v7, v3

    new-array v9, v8, [I

    aput-object v9, v1, v2

    const/4 v1, 0x0

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_6
    if-ge v0, v8, :cond_2

    const-string/jumbo v9, "scaling_list_delta_coef "

    invoke-virtual {p1, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v1, v9

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    aget-object v9, v7, v3

    aget-object v9, v9, v2

    aput v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x6

    goto/16 :goto_2
.end method
