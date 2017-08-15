.class public Lorg/telegram/ui/Cells/PushCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "PushCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PushCell$CustomDialog;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private avatarTop:I

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private checkDrawLeft:I

.field private checkDrawTop:I

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentDialogId:J

.field private currentEditDate:I

.field private customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

.field private dialogMuted:Z

.field private dialogsType_push:I

.field private draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field private drawCheck1:Z

.field private drawCheck2:Z

.field private drawClock:Z

.field private drawCount:Z

.field private drawError:Z

.field private drawNameBot:Z

.field private drawNameBroadcast:Z

.field private drawNameGroup:Z

.field private drawNameLock:Z

.field private drawPin:Z

.field private drawVerified:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private errorLeft:I

.field private errorTop:I

.field private halfCheckDrawLeft:I

.field private index:I

.field private isSecurityCell:Z

.field private isSelected:Z

.field private lastMessageDate:I

.field private lastPrintString:Ljava/lang/CharSequence;

.field private lastSendState:I

.field private lastUnreadState:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private messageLayout:Landroid/text/StaticLayout;

.field private messageLeft:I

.field private messageTop:I

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameMuteLeft:I

.field private pinLeft:I

.field private pinTop:I

.field private rect:Landroid/graphics/RectF;

.field private timeLayout:Landroid/text/StaticLayout;

.field private timeLeft:I

.field private timeTop:I

.field private unreadCount:I

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/high16 v2, 0x421c0000    # 39.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->lastPrintString:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->useSeparator:Z

    const/high16 v0, 0x41880000    # 17.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->timeTop:I

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawTop:I

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->messageTop:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->errorTop:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->pinTop:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->countTop:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarTop:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->rect:Landroid/graphics/RectF;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/telegram/ui/Dialogs;

    invoke-direct {v0}, Lorg/telegram/ui/Dialogs;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/Dialogs;->getDialogs()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/telegram/ui/Dialogs;

    invoke-direct {v0}, Lorg/telegram/ui/Dialogs;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/Dialogs;->getDialogs()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    goto :goto_0

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    goto :goto_0

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    goto :goto_0

    :cond_9
    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public buildLayout()V
    .locals 19

    const-string/jumbo v10, ""

    const-string/jumbo v8, ""

    const/4 v5, 0x0

    const-string/jumbo v7, ""

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    :cond_0
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameBroadcast:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameLock:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameBot:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->type:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameLock:Z

    const/high16 v2, 0x41840000    # 16.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_b

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->type:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_14

    const-string/jumbo v2, "FromYou"

    const v4, 0x7f08025a

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->isMedia:Z

    if-eqz v2, :cond_12

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    const-string/jumbo v2, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v10, v7, v8

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v8, "chats_attachMessage"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v2, v7, v8, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v8, "chats_nameMessage"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x21

    invoke-virtual {v2, v7, v8, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    move/from16 v18, v4

    move-object v4, v2

    move/from16 v2, v18

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v6, v6, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v7, v7, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->unread_count:I

    if-eqz v7, :cond_15

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    const-string/jumbo v5, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v10, v10, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->unread_count:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-boolean v7, v7, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->sent:Z

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-object v8, v7, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v7, v7, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->type:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_76

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    move v14, v2

    move-object v15, v3

    move-object v10, v7

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object v11, v8

    move-object v3, v6

    :goto_5
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v5, v4

    new-instance v2, Landroid/text/StaticLayout;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->timeLayout:Landroid/text/StaticLayout;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_58

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    :goto_6
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_59

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    sub-int/2addr v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameLock:Z

    if-eqz v3, :cond_5a

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    :cond_2
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    if-eqz v3, :cond_5e

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_5d

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    sub-int v3, v4, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    :cond_3
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->dialogMuted:Z

    if-eqz v3, :cond_62

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    if-nez v3, :cond_62

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    :cond_4
    :goto_a
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v2, 0xa

    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v5, v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v10, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v2, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_64

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_63

    const/high16 v2, 0x41500000    # 13.0f

    :goto_c
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Cells/PushCell;->avatarTop:I

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x42500000    # 52.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v2, v6, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    if-eqz v2, :cond_67

    const/high16 v2, 0x41f80000    # 31.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v2, v3, v4

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_66

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->errorLeft:I

    :goto_e
    move v3, v2

    :goto_f
    if-eqz v14, :cond_7

    if-nez v16, :cond_5

    const-string/jumbo v16, ""

    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x96

    if-le v4, v6, :cond_6

    const/4 v4, 0x0

    const/16 v6, 0x96

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_6
    const/16 v4, 0xa

    const/16 v6, 0x20

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/high16 v6, 0x41880000    # 17.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v2, v4, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v16

    :cond_7
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v9, v2

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-static {v0, v15, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    :try_start_1
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v15

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_10
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->dialogMuted:Z

    if-eqz v3, :cond_6b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    if-nez v3, :cond_6b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    int-to-double v10, v3

    int-to-double v12, v5

    sub-double/2addr v12, v6

    add-double/2addr v10, v12

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-double v12, v3

    sub-double/2addr v10, v12

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-double v12, v3

    sub-double/2addr v10, v12

    double-to-int v3, v10

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameMuteLeft:I

    :cond_8
    :goto_11
    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    int-to-double v2, v5

    cmpg-double v2, v6, v2

    if-gez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    int-to-double v2, v2

    int-to-double v4, v5

    sub-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    int-to-double v4, v9

    cmpg-double v4, v2, v4

    if-gez v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    int-to-double v4, v4

    int-to-double v6, v9

    sub-double v2, v6, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    :cond_a
    :goto_12
    return-void

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v2

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v2, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->type:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    const/high16 v2, 0x418c0000    # 17.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_e

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    if-eqz v2, :cond_d

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_13
    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_0

    :cond_d
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_13

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v2

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    if-eqz v2, :cond_f

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_14
    sub-int v2, v6, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_0

    :cond_f
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_14

    :cond_10
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_11

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_0

    :cond_11
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-object v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x96

    if-le v7, v8, :cond_13

    const/4 v7, 0x0

    const/16 v8, 0x96

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string/jumbo v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v8, v10

    const/4 v10, 0x1

    const/16 v11, 0xa

    const/16 v12, 0x20

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-object v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-boolean v6, v6, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->isMedia:Z

    if-eqz v6, :cond_77

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    move/from16 v18, v4

    move-object v4, v2

    move/from16 v2, v18

    goto/16 :goto_2

    :cond_15
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    goto/16 :goto_3

    :cond_16
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameLock:Z

    const/high16 v6, 0x41840000    # 16.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_21

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v6, v11

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    :cond_18
    :goto_15
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Cells/PushCell;->lastMessageDate:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Cells/PushCell;->lastMessageDate:I

    if-nez v11, :cond_19

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    if-eqz v11, :cond_2c

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    invoke-static {v12, v13}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    if-eqz v11, :cond_1d

    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    if-le v6, v11, :cond_1b

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    if-nez v6, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v6, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v6, :cond_1e

    :cond_1d
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    :cond_1e
    :goto_16
    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->lastPrintString:Ljava/lang/CharSequence;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    :cond_1f
    :goto_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v6, :cond_49

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    :goto_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v7, :cond_4b

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    :cond_20
    :goto_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_52

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object v8, v7

    move-object v7, v9

    :goto_1a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_71

    const-string/jumbo v8, "HiddenName"

    const v9, 0x7f080270

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    move v14, v4

    move-object v15, v3

    move-object v10, v7

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object v11, v8

    move-object v3, v6

    goto/16 :goto_5

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v6

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v6, v11

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v6, v11

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_15

    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_28

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ltz v6, :cond_23

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_24

    :cond_23
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameBroadcast:Z

    const/high16 v6, 0x41840000    # 16.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    :goto_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_26

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    if-eqz v6, :cond_25

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    :goto_1c
    add-int/2addr v6, v11

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_15

    :cond_24
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    const/high16 v6, 0x418c0000    # 17.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    goto :goto_1b

    :cond_25
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    goto :goto_1c

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v6

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v11, v6, v11

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    if-eqz v6, :cond_27

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    :goto_1d
    sub-int v6, v11, v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_15

    :cond_27
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    goto :goto_1d

    :cond_28
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_2a

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    :goto_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameBot:Z

    const/high16 v6, 0x41840000    # 16.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_2b

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v6, v11

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    :cond_29
    :goto_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    goto/16 :goto_15

    :cond_2a
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto :goto_1e

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v6

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v6, v11

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v6, v11

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto :goto_1f

    :cond_2c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto/16 :goto_16

    :cond_2d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->lastPrintString:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_30

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "Draft"

    const v6, 0x7f0801dd

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v11, "chats_draft"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v7, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v12, 0x21

    invoke-virtual {v2, v7, v11, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_17

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x96

    if-le v6, v7, :cond_2f

    const/4 v6, 0x0

    const/16 v7, 0x96

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2f
    const-string/jumbo v6, "Draft"

    const v7, 0x7f0801dd

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%s: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    const/16 v14, 0x20

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v11, "chats_draft"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v7, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0x21

    invoke-virtual {v2, v7, v11, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v2, v6, v7, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_17

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_75

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v2, :cond_31

    const-string/jumbo v2, "EncryptionProcessing"

    const v6, 0x7f0801f9

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_32

    const-string/jumbo v2, "AwaitingEncryption"

    const v6, 0x7f0800c2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v12, v7, v11

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_32
    const-string/jumbo v2, "AwaitingEncryption"

    const v6, 0x7f0800c2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v7, v11

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v2, :cond_34

    const-string/jumbo v2, "EncryptionRejected"

    const v6, 0x7f0801fa

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_75

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v2, v6, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v2, :cond_35

    const-string/jumbo v2, "EncryptedChatStartedOutgoing"

    const v6, 0x7f0801ee

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v12, v7, v11

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_35
    const-string/jumbo v2, "EncryptedChatStartedOutgoing"

    const v6, 0x7f0801ee

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, ""

    aput-object v12, v7, v11

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_36
    const-string/jumbo v2, "EncryptedChatStartedIncoming"

    const v6, 0x7f0801ed

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_17

    :cond_37
    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    :goto_20
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v7, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_17

    :cond_38
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_20

    :cond_39
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_45

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v7, :cond_45

    if-nez v2, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string/jumbo v2, "FromYou"

    const v4, 0x7f08025a

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_21
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v11, 0x96

    if-le v7, v11, :cond_3a

    const/4 v7, 0x0

    const/16 v11, 0x96

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_3a
    const-string/jumbo v7, "%s: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    const/16 v14, 0x20

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v12

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_22
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3b

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v11, "chats_nameMessage"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v7, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v12, 0x21

    invoke-virtual {v3, v7, v11, v2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3b
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v3, v2, v7, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v3, v4

    move v4, v6

    goto/16 :goto_17

    :cond_3c
    if-eqz v6, :cond_3d

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\n"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_21

    :cond_3d
    if-eqz v2, :cond_3e

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const-string/jumbo v4, "\n"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_21

    :cond_3e
    const-string/jumbo v2, "DELETED"

    goto/16 :goto_21

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_40

    const-string/jumbo v3, "%s: \ud83c\udfae %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v12, v7, v11

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    :goto_23
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v11, "chats_attachMessage"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v7, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v3, v7, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_22

    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0xe

    if-ne v3, v7, :cond_41

    const-string/jumbo v3, "%s: \ud83c\udfa7 %s - %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_23

    :cond_41
    const-string/jumbo v3, "%s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    aput-object v12, v7, v11

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_23

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v11, 0x96

    if-le v7, v11, :cond_43

    const/4 v7, 0x0

    const/16 v11, 0x96

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_43
    const-string/jumbo v7, "%s: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    const/16 v14, 0x20

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v12

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_22

    :cond_44
    const-string/jumbo v4, ""

    invoke-static {v4}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_22

    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_17

    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\ud83c\udfae "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    goto/16 :goto_17

    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v2, v6, :cond_48

    const-string/jumbo v2, "\ud83c\udfa7 %s - %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_24

    :cond_49
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Cells/PushCell;->lastMessageDate:I

    if-eqz v6, :cond_4a

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Cells/PushCell;->lastMessageDate:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_4a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_74

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_18

    :cond_4b
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    if-eqz v7, :cond_4c

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    const-string/jumbo v5, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_25
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v7

    if-eqz v7, :cond_51

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v7, :cond_51

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v7

    if-eqz v7, :cond_4d

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    goto/16 :goto_19

    :cond_4c
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    goto :goto_25

    :cond_4d
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v7

    if-eqz v7, :cond_4e

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    goto/16 :goto_19

    :cond_4e
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v7

    if-eqz v7, :cond_20

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v7

    if-eqz v7, :cond_4f

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_50

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_50

    :cond_4f
    const/4 v7, 0x1

    :goto_26
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    goto/16 :goto_19

    :cond_50
    const/4 v7, 0x0

    goto :goto_26

    :cond_51
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    goto/16 :goto_19

    :cond_52
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_73

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_53

    const-string/jumbo v7, "ChatYourSelfName"

    const v8, 0x7f080167

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_27
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v8, :cond_72

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, v18

    goto/16 :goto_1a

    :cond_53
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v7, v7, 0x3e8

    const/16 v8, 0x309

    if-eq v7, v8, :cond_57

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v7, v7, 0x3e8

    const/16 v8, 0x14d

    if-eq v7, v8, :cond_57

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_57

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_55

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v7, :cond_54

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v7

    if-eqz v7, :cond_55

    :cond_54
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    goto :goto_27

    :cond_55
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v7, :cond_56

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_56

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "+"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_27

    :cond_56
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_27

    :cond_57
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_27

    :cond_58
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    goto/16 :goto_6

    :cond_59
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    sub-int/2addr v2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_7

    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    if-eqz v3, :cond_5b

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto/16 :goto_8

    :cond_5b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameBroadcast:Z

    if-eqz v3, :cond_5c

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto/16 :goto_8

    :cond_5c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawNameBot:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto/16 :goto_8

    :cond_5d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    add-int/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_9

    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    if-eqz v3, :cond_3

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    if-eqz v4, :cond_60

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v2, v4

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_5f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    sub-int v3, v4, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->halfCheckDrawLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->halfCheckDrawLeft:I

    const/high16 v4, 0x40b00000    # 5.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    goto/16 :goto_9

    :cond_5f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    add-int/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    const/high16 v5, 0x40b00000    # 5.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/PushCell;->halfCheckDrawLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_9

    :cond_60
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_61

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    sub-int v3, v4, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    goto/16 :goto_9

    :cond_61
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    add-int/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_9

    :cond_62
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    goto/16 :goto_a

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_63
    const/high16 v2, 0x41100000    # 9.0f

    goto/16 :goto_c

    :cond_64
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_65

    const/high16 v2, 0x42820000    # 65.0f

    :goto_28
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v4, v2

    goto/16 :goto_d

    :cond_65
    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_28

    :cond_66
    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->errorLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    goto/16 :goto_e

    :cond_67
    if-eqz v17, :cond_69

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->countWidth:I

    new-instance v6, Landroid/text/StaticLayout;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/Cells/PushCell;->countWidth:I

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, v17

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/ui/Cells/PushCell;->countLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/PushCell;->countWidth:I

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    sub-int v2, v3, v4

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_68

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->countWidth:I

    sub-int/2addr v3, v4

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->countLeft:I

    :goto_29
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    move v3, v2

    goto/16 :goto_f

    :cond_68
    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->countLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    goto :goto_29

    :cond_69
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/PushCell;->drawPin:Z

    if-eqz v2, :cond_70

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    sub-int v2, v3, v4

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->pinLeft:I

    :goto_2a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    move v3, v2

    goto/16 :goto_f

    :cond_6a
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->pinLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    goto :goto_2a

    :catch_1
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_6b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    int-to-double v10, v3

    int-to-double v12, v5

    sub-double/2addr v12, v6

    add-double/2addr v10, v12

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-double v12, v3

    sub-double/2addr v10, v12

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-double v12, v3

    sub-double/2addr v10, v12

    double-to-int v3, v10

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameMuteLeft:I

    goto/16 :goto_11

    :cond_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v5

    cmpl-float v3, v2, v3

    if-nez v3, :cond_6d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v10, v5

    cmpg-double v3, v6, v10

    if-gez v3, :cond_6d

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    int-to-double v10, v3

    int-to-double v4, v5

    sub-double/2addr v4, v6

    sub-double v4, v10, v4

    double-to-int v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    :cond_6d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->dialogMuted:Z

    if-nez v3, :cond_6e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    if-eqz v3, :cond_6f

    :cond_6e
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->nameMuteLeft:I

    :cond_6f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v9

    cmpl-float v2, v2, v3

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    int-to-double v4, v9

    cmpg-double v4, v2, v4

    if-gez v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    int-to-double v4, v4

    int-to-double v6, v9

    sub-double v2, v6, v2

    sub-double v2, v4, v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    goto/16 :goto_12

    :cond_70
    move v2, v3

    goto/16 :goto_2a

    :cond_71
    move v14, v4

    move-object v15, v3

    move-object v10, v7

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object v11, v8

    move-object v3, v6

    goto/16 :goto_5

    :cond_72
    move-object v8, v7

    move-object v7, v9

    goto/16 :goto_1a

    :cond_73
    move-object v7, v9

    move-object v8, v10

    goto/16 :goto_1a

    :cond_74
    move-object v6, v8

    goto/16 :goto_18

    :cond_75
    move-object v2, v7

    goto/16 :goto_17

    :cond_76
    move v14, v2

    move-object v15, v3

    move-object v10, v9

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object v11, v8

    move-object v3, v6

    goto/16 :goto_5

    :cond_77
    move/from16 v18, v4

    move-object v4, v2

    move/from16 v2, v18

    goto/16 :goto_2
.end method

.method public checkCurrentDialogIndex()V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->index:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/PushCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Cells/PushCell;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/PushCell;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/query/DraftQuery;->getDraft(J)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-wide v4, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ne v3, v4, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iget v4, p0, Lorg/telegram/ui/Cells/PushCell;->currentEditDate:I

    if-ne v3, v4, :cond_3

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-ne v2, v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/PushCell;->drawPin:Z

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eq v1, v2, :cond_4

    :cond_3
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PushCell;->update(I)V

    :cond_4
    return-void
.end method

.method public getDialogId()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    return-wide v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x40b00000    # 5.5f

    const/high16 v8, 0x41b80000    # 23.0f

    const/high16 v6, 0x41840000    # 16.5f

    const/high16 v7, 0x41380000    # 11.5f

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSelected:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawPin:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawNameLock:Z

    if-eqz v0, :cond_a

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->nameLeft:I

    int-to-float v0, v0

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->timeLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->timeTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->messageLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->messageTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawClock:Z

    if-eqz v0, :cond_d

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogMuted:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    if-nez v0, :cond_f

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->nameMuteLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawError:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->errorLeft:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->errorTop:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/PushCell;->errorLeft:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/PushCell;->errorTop:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v7

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v7

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->errorLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->errorTop:I

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->useSeparator:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawNameGroup:Z

    if-eqz v0, :cond_b

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawNameBroadcast:Z

    if-eqz v0, :cond_c

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawNameBot:Z

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->nameLockTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawCheck2:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawCheck1:Z

    if-eqz v0, :cond_e

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->halfCheckDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_e
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->checkDrawTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawVerified:Z

    if-eqz v0, :cond_7

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->nameMuteLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->nameMuteLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawCount:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->countLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->rect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/Cells/PushCell;->countTop:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/PushCell;->countWidth:I

    add-int/2addr v0, v5

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Cells/PushCell;->countTop:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->rect:Landroid/graphics/RectF;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v7, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v4, v7, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogMuted:Z

    if-eqz v0, :cond_12

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    :goto_7
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Cells/PushCell;->countLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->countTop:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_12
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    goto :goto_7

    :cond_13
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawPin:Z

    if-eqz v0, :cond_8

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->pinLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/PushCell;->pinTop:I

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Cells/PushCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    :cond_14
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->buildLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->useSeparator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/PushCell;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;I)V
    .locals 3

    const/4 v1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    iput-object p3, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    iput p4, p0, Lorg/telegram/ui/Cells/PushCell;->lastMessageDate:I

    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->currentEditDate:I

    iput v1, p0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastUnreadState:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastSendState:I

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/PushCell;->update(I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$TL_dialog;II)V
    .locals 2

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    iput p2, p0, Lorg/telegram/ui/Cells/PushCell;->index:I

    iput p3, p0, Lorg/telegram/ui/Cells/PushCell;->dialogsType_push:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PushCell;->update(I)V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/PushCell$CustomDialog;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PushCell;->update(I)V

    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->invalidate()V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PushCell;->isSelected:Z

    return-void
.end method

.method public update(I)V
    .locals 12

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->date:I

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastMessageDate:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->unread_count:I

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastUnreadState:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v0, v0, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawPin:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->muted:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogMuted:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget v2, v2, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->id:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->customDialog:Lorg/telegram/ui/Cells/PushCell$CustomDialog;

    iget-object v3, v3, Lorg/telegram/ui/Cells/PushCell$CustomDialog;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_18

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->buildLayout()V

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->invalidate()V

    :cond_1
    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iput-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/PushCell;->lastUnreadState:Z

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v2, p0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_4
    iput v2, p0, Lorg/telegram/ui/Cells/PushCell;->currentEditDate:I

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iput v2, p0, Lorg/telegram/ui/Cells/PushCell;->lastMessageDate:I

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->drawPin:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastSendState:I

    :cond_4
    :goto_5
    if-eqz p1, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    if-eqz v0, :cond_1d

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-wide v6, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_7

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->lastPrintString:Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1d

    if-eqz v0, :cond_1d

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->lastPrintString:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_7
    move v2, v3

    :goto_6
    if-nez v2, :cond_8

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_8

    move v2, v3

    :cond_8
    if-nez v2, :cond_9

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_9

    move v2, v3

    :cond_9
    if-nez v2, :cond_a

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_a

    move v2, v3

    :cond_a
    if-nez v2, :cond_b

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_b

    move v2, v3

    :cond_b
    if-nez v2, :cond_1c

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastUnreadState:Z

    iget-object v4, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eq v0, v4, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastUnreadState:Z

    move v0, v3

    :goto_7
    if-nez v0, :cond_c

    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_c

    iget v2, p0, Lorg/telegram/ui/Cells/PushCell;->lastSendState:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v2, v4, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->lastSendState:I

    move v0, v3

    :cond_c
    if-eqz v0, :cond_1

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v3

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->dialogMuted:Z

    iput-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v1, p0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v6, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    long-to-int v0, v6

    iget-wide v6, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    const/16 v2, 0x20

    shr-long/2addr v6, v2

    long-to-int v2, v6

    if-eqz v0, :cond_16

    if-ne v2, v3, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    :cond_e
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_a
    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    move-object v7, v0

    :goto_b
    iget-object v6, p0, Lorg/telegram/ui/Cells/PushCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const-string/jumbo v8, "50_50"

    iget-object v9, p0, Lorg/telegram/ui/Cells/PushCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    move-object v10, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_f
    move v2, v5

    goto/16 :goto_3

    :cond_10
    move v2, v5

    goto/16 :goto_4

    :cond_11
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/PushCell;->drawPin:Z

    goto/16 :goto_5

    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p0, Lorg/telegram/ui/Cells/PushCell;->currentDialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_1c

    iget v4, p0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-eq v4, v6, :cond_1c

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, p0, Lorg/telegram/ui/Cells/PushCell;->unreadCount:I

    move v0, v3

    goto/16 :goto_7

    :cond_13
    move v0, v5

    goto :goto_8

    :cond_14
    if-gez v0, :cond_15

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PushCell;->isSecurityCell:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v0, :cond_e

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto/16 :goto_9

    :cond_15
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_9

    :cond_16
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_e

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto/16 :goto_9

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_c
    iget-object v2, p0, Lorg/telegram/ui/Cells/PushCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/PushCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    move-object v7, v0

    goto/16 :goto_b

    :cond_18
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PushCell;->requestLayout()V

    goto/16 :goto_2

    :cond_19
    move-object v0, v1

    goto :goto_c

    :cond_1a
    move-object v7, v1

    goto/16 :goto_b

    :cond_1b
    move-object v0, v1

    goto/16 :goto_a

    :cond_1c
    move v0, v2

    goto/16 :goto_7

    :cond_1d
    move v2, v5

    goto/16 :goto_6
.end method
