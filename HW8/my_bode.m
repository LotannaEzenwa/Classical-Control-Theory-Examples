function [ mag, phsz, m ] = my_bode( sys )
%my_bode Makes a bode plot of the input transfer funciton
   subplot(2,1,1);
   [num,den] = tfdata(sys);
   syms s w
   t_sym = poly2sym(cell2mat(num),s)/poly2sym(cell2mat(den),s);
   m = logspace(-2,4,1000);
   a_sym = subs(t_sym,s,1j*w);
   H = matlabFunction(a_sym);
   mag = 20*log10(abs(H(m)));
   semilogx(m,mag);
   grid on
   title('Magnitude Response');
   legend('H(s)');
   xlabel('Frequency, rad/sec');
   ylabel('Magnitude, dB');
   subplot(2,1,2);
   title('Frequency Response');
   xlabel('Frequency, rad/sec');
   ylabel('Phase (deg)');
   phsz = 180/pi*angle(H(m));
   semilogx(m,phsz);
   grid on
   xlabel('Frequency, rad/sec');
   ylabel('Phase (deg)');
   legend('H(s)');
   
   
end

