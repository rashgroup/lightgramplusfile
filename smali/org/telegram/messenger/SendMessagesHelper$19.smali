.class final Lorg/telegram/messenger/SendMessagesHelper$19;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$captions:Ljava/util/ArrayList;

.field final synthetic val$dialog_id:J

.field final synthetic val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

.field final synthetic val$masks:Ljava/util/ArrayList;

.field final synthetic val$pathsCopy:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$urisCopy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$pathsCopy:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$urisCopy:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$captions:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$masks:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v2

    :goto_1
    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_2
    move/from16 v0, v16

    if-ge v0, v6, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$pathsCopy:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v3

    move-object v14, v2

    :goto_3
    if-nez v14, :cond_1b

    if-eqz v15, :cond_1b

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    const/4 v2, 0x0

    if-eqz v7, :cond_5

    const-string/jumbo v3, ".gif"

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ".webp"

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const-string/jumbo v2, ".gif"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "gif"

    :goto_5
    const/4 v3, 0x1

    move-object v9, v7

    move-object v13, v2

    move v2, v3

    :goto_6
    if-eqz v2, :cond_8

    if-nez v12, :cond_19

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    move-object v5, v3

    move-object v3, v2

    :goto_7
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$captions:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$captions:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v3

    move-object v11, v5

    move-object v12, v7

    :goto_9
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    move-object v5, v13

    move-object v3, v15

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v2

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$urisCopy:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v15, v2

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v2, "webp"

    goto :goto_5

    :cond_5
    if-nez v7, :cond_1a

    if-eqz v15, :cond_1a

    invoke-static {v15}, Lorg/telegram/messenger/MediaController;->isGif(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "gif"

    invoke-static {v15, v3}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "gif"

    move-object v9, v3

    move-object v8, v5

    move-object v13, v7

    goto/16 :goto_6

    :cond_6
    invoke-static {v15}, Lorg/telegram/messenger/MediaController;->isWebp(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "webp"

    invoke-static {v15, v3}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "webp"

    move-object v9, v3

    move-object v8, v5

    move-object v13, v7

    goto/16 :goto_6

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    if-eqz v9, :cond_b

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    :goto_a
    const/4 v2, 0x0

    if-nez v4, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    if-nez v4, :cond_c

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v8, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v2, :cond_9

    if-eqz v15, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_d

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v5, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    :cond_9
    if-nez v2, :cond_18

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v2

    move-object v7, v2

    :goto_d
    if-eqz v7, :cond_12

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$captions:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$captions:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$masks:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$masks:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    :goto_e
    iput-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->has_stickers:Z

    if-eqz v3, :cond_10

    new-instance v17, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x14

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v3, 0x0

    move v5, v3

    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_f

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$InputDocument;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_f

    :cond_b
    const/4 v2, 0x0

    move-object v8, v2

    goto/16 :goto_a

    :cond_c
    const/4 v2, 0x3

    goto/16 :goto_b

    :cond_d
    const/4 v2, 0x3

    goto/16 :goto_c

    :cond_e
    const/4 v3, 0x0

    goto :goto_e

    :cond_f
    const-string/jumbo v2, "masks"

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-eqz v8, :cond_11

    const-string/jumbo v2, "originalPath"

    invoke-virtual {v9, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$19$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7, v9}, Lorg/telegram/messenger/SendMessagesHelper$19$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$19;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/util/HashMap;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_12
    if-nez v12, :cond_13

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$captions:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$captions:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_10
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_14
    const/4 v2, 0x0

    goto :goto_10

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-virtual {v2}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->releasePermission()V

    :cond_16
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x0

    move v13, v2

    :goto_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_17

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_11

    :cond_17
    return-void

    :cond_18
    move-object v7, v2

    goto/16 :goto_d

    :cond_19
    move-object v3, v10

    move-object v5, v11

    move-object v7, v12

    goto/16 :goto_7

    :cond_1a
    move-object v9, v7

    move-object v13, v5

    goto/16 :goto_6

    :cond_1b
    move-object v7, v14

    move-object v8, v14

    goto/16 :goto_4

    :cond_1c
    move-object v15, v3

    goto/16 :goto_3
.end method
