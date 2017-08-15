.class Lorg/telegram/ui/ProfileMaker$3$43;
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

.field final synthetic val$finalListString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileMaker$3$43;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iput-object p2, p0, Lorg/telegram/ui/ProfileMaker$3$43;->val$finalListString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3$43;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker$3;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3$43;->val$finalListString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3$43;->this$1:Lorg/telegram/ui/ProfileMaker$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0808c5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
