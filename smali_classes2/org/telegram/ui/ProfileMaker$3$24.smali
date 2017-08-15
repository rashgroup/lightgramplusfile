.class Lorg/telegram/ui/ProfileMaker$3$24;
.super Ljava/lang/Object;
.source "ProfileMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileMaker$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileMaker$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileMaker$3;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileMaker$3$24;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3$24;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker$3;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "( \uff65_\uff65)\u00bb(\uff9f\uff70\uff9f)\u00bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3$24;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00ab(\uff9f\uff70\uff9f)\u00ab( \uff65_\uff65)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3$24;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0808c5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
