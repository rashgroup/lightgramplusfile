.class Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;
.super Ljava/lang/Object;
.source "ThemePreviewActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    return-void
.end method

.method public didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    return-void
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .locals 0

    return-void
.end method

.method public needOpenUserProfile(I)V
    .locals 0

    return-void
.end method
