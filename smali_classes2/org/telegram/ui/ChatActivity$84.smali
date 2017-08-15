.class Lorg/telegram/ui/ChatActivity$84;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$checks:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;[Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$84;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v1, v1, v5

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    aput-boolean v1, v3, v4

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$84;->val$checks:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-boolean v0, v1, v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
