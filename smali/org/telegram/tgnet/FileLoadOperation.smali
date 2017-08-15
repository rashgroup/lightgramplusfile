.class public Lorg/telegram/tgnet/FileLoadOperation;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# instance fields
.field private address:I

.field private delegate:Lorg/telegram/tgnet/FileLoadOperationDelegate;

.field private isForceRequest:Z

.field private started:Z


# direct methods
.method public constructor <init>(IJJJI[B[BLjava/lang/String;IILjava/io/File;Ljava/io/File;Lorg/telegram/tgnet/FileLoadOperationDelegate;)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p14 .. p14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p15 .. p15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v18, p16

    invoke-static/range {v3 .. v18}, Lorg/telegram/tgnet/FileLoadOperation;->native_createLoadOpetation(IJJJI[B[BLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/tgnet/FileLoadOperation;->address:I

    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/tgnet/FileLoadOperation;->delegate:Lorg/telegram/tgnet/FileLoadOperationDelegate;

    return-void
.end method

.method public static native native_cancelLoadOperation(I)V
.end method

.method public static native native_createLoadOpetation(IJJJI[B[BLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native native_startLoadOperation(I)V
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->started:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->address:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->address:I

    invoke-static {v0}, Lorg/telegram/tgnet/FileLoadOperation;->native_cancelLoadOperation(I)V

    goto :goto_0
.end method

.method public isForceRequest()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public setForceRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/tgnet/FileLoadOperation;->isForceRequest:Z

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->started:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->address:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->delegate:Lorg/telegram/tgnet/FileLoadOperationDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/tgnet/FileLoadOperationDelegate;->onFailed(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->started:Z

    iget v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->address:I

    invoke-static {v0}, Lorg/telegram/tgnet/FileLoadOperation;->native_startLoadOperation(I)V

    goto :goto_0
.end method

.method public wasStarted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/FileLoadOperation;->started:Z

    return v0
.end method
