.class final Lorg/telegram/messenger/SendMessagesHelper$15;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;JLjava/util/HashMap;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v2, "game"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$dialog_id:J

    long-to-int v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_game;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_game;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->description:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->short_name:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->flags:I

    move-object v4, v1

    move-object v2, v1

    move-object v3, v1

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$params:Ljava/util/HashMap;

    const-string/jumbo v1, "originalPath"

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$15$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$15$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$15;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/tgnet/TLRPC$TL_game;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object v5, v1

    move-object v4, v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object v5, v1

    move-object v4, v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v0, :cond_12

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v8, "file"

    invoke-static {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_5
    :goto_3
    packed-switch v2, :pswitch_data_0

    move-object v5, v1

    move-object v4, v1

    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    goto :goto_2

    :sswitch_0
    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v8, "voice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v5

    goto :goto_3

    :sswitch_2
    const-string/jumbo v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x2

    goto :goto_3

    :sswitch_3
    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_4
    const-string/jumbo v8, "sticker"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v6

    goto :goto_3

    :sswitch_5
    const-string/jumbo v8, "gif"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x5

    goto :goto_3

    :sswitch_6
    const-string/jumbo v8, "photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x6

    goto :goto_3

    :pswitch_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_7
    :goto_4
    packed-switch v3, :pswitch_data_1

    :cond_8
    :goto_5
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string/jumbo v3, "file"

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    :cond_9
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v3, :cond_a

    const-string/jumbo v3, "application/octet-stream"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    :cond_a
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v3, :cond_11

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v4, "x"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    move-object v5, v1

    move-object v4, v1

    move-object v3, v0

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v6, "gif"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    goto :goto_4

    :sswitch_8
    const-string/jumbo v6, "voice"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v5

    goto :goto_4

    :sswitch_9
    const-string/jumbo v6, "audio"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x2

    goto :goto_4

    :sswitch_a
    const-string/jumbo v6, "file"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x3

    goto :goto_4

    :sswitch_b
    const-string/jumbo v9, "video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v3, v6

    goto :goto_4

    :sswitch_c
    const-string/jumbo v6, "sticker"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_4

    :pswitch_1
    const-string/jumbo v3, "animation.gif"

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    const-string/jumbo v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "video/mp4"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    :try_start_0
    const-string/jumbo v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_8

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/16 v8, 0x37

    const/4 v9, 0x0

    invoke-static {v3, v5, v6, v8, v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v3, "image/gif"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v8, 0x1

    :try_start_1
    invoke-static {v0, v3, v5, v6, v8}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_7

    :pswitch_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    const-string/jumbo v5, "audio.ogg"

    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_3
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    :cond_d
    const-string/jumbo v5, "audio.mp3"

    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_4
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_type:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    goto/16 :goto_5

    :cond_e
    const-string/jumbo v3, "file"

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_5
    const-string/jumbo v3, "video.mp4"

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->duration:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    const-string/jumbo v9, "jpg"

    invoke-static {v8, v9}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x1

    invoke-static {v3, v5, v6, v8, v9}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/16 v8, 0x37

    const/4 v9, 0x0

    invoke-static {v3, v5, v6, v8, v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :pswitch_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    const-string/jumbo v5, ""

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "sticker.webp"

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    const-string/jumbo v9, "webp"

    invoke-static {v8, v9}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x1

    invoke-static {v3, v5, v6, v8, v9}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/16 v8, 0x37

    const/4 v9, 0x0

    invoke-static {v3, v5, v6, v8, v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :pswitch_7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v4

    :goto_8
    if-nez v4, :cond_f

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$15;->val$result:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v3, "x"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object v5, v1

    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_1

    :cond_10
    move-object v4, v1

    goto :goto_8

    :cond_11
    move-object v5, v1

    move-object v4, v1

    move-object v3, v0

    goto/16 :goto_1

    :cond_12
    move-object v5, v1

    move-object v4, v1

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :cond_13
    move-object v4, v1

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_4
        0x18fc4 -> :sswitch_5
        0x2ff57c -> :sswitch_2
        0x58d9bd6 -> :sswitch_0
        0x65b3e32 -> :sswitch_6
        0x6b0147b -> :sswitch_3
        0x6b2e132 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_c
        0x18fc4 -> :sswitch_7
        0x2ff57c -> :sswitch_a
        0x58d9bd6 -> :sswitch_9
        0x6b0147b -> :sswitch_b
        0x6b2e132 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
