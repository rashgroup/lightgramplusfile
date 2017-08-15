.class Lorg/telegram/ui/ChatActivity$48$C14373;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity$48;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C14373"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$48;

.field final val$datePicker:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$48;Landroid/widget/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$48$C14373;->this$1:Lorg/telegram/ui/ChatActivity$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$48$C14373;->val$datePicker:Landroid/widget/DatePicker;

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$48$C14373;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$48$C14373;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2, v0}, Landroid/widget/DatePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
